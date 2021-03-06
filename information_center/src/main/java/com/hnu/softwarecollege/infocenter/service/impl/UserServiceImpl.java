package com.hnu.softwarecollege.infocenter.service.impl;

import com.hnu.softwarecollege.infocenter.client.FaceRecognition;
import com.hnu.softwarecollege.infocenter.context.ThreadContext;
import com.hnu.softwarecollege.infocenter.entity.po.CenterPo;
import com.hnu.softwarecollege.infocenter.entity.po.UserAndUserinfoPo;
import com.hnu.softwarecollege.infocenter.entity.po.UserPo;
import com.hnu.softwarecollege.infocenter.entity.vo.LoginForm;
import com.hnu.softwarecollege.infocenter.entity.vo.RegistForm;
import com.hnu.softwarecollege.infocenter.entity.vo.UserInfoForm;
import com.hnu.softwarecollege.infocenter.exception.UserFaceException;
import com.hnu.softwarecollege.infocenter.mapper.CenterPoMapper;
import com.hnu.softwarecollege.infocenter.mapper.UserInformationPoMapper;
import com.hnu.softwarecollege.infocenter.mapper.UserPoMapper;
import com.hnu.softwarecollege.infocenter.service.UserService;
import com.hnu.softwarecollege.infocenter.util.DESUtil;
import com.hnu.softwarecollege.infocenter.util.MailUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.persistence.Transient;
import java.util.Objects;

/**
 * @program: infocenter
 * @description:
 * @author: yu
 * @create: 2018-11-07 00:48
 **/
@Service
@Slf4j
public class UserServiceImpl implements UserService {
//    Logger logger = LoggerFactory.getLogger(this.getClass()) ;

    @Resource
    UserPoMapper userPoMapper;
    @Resource
    UserInformationPoMapper userInformationPoMapper;
    @Resource
    CenterPoMapper centerPoMapper;

    /**
     * @Description: 用户注册
     * @Param: [registForm]
     * @return: boolean
     * @Author: yu
     * @Date: 2018/11/8 0:06
     **/
    @Override
    @Transient
    public Long createUser(RegistForm registForm) {
        UserPo userPo = userPoMapper.selectByUserEmail(registForm.getUserEmail());

        if (userPo != null) {

            log.info("the email:{} has been registed!", registForm.getUserName());

            return null;

        } else {

            int flag = userPoMapper.insert(registForm.toUserPo());

            log.debug("the create return num is {}", flag);
            Long userkey = userPoMapper.selectByUserEmail(registForm.getUserEmail()).getUserId();
            int num1 = userInformationPoMapper.insertSelective(registForm.toUserUserInformationPo(userkey));

            CenterPo centerPo = new CenterPo();
            centerPo.setUserKey(userkey);
            centerPo.setWeatherCode(101090101);
            int num2 = centerPoMapper.insertSelective(centerPo);

            if (flag == 1 && num1 == 1 && num2 == 1) {

                log.debug("create a user name:{}", registForm.getUserName());
                return userkey;
            }
            log.error("create fail! user name:{}", registForm.getUserName());
            return null;
        }
    }

    /**
     * @Description: 用户登录验证
     * @Param: [loginForm]
     * @return: boolean
     * @Author: yu
     * @Date: 2018/11/8 11:03
     **/
    @Override
    public boolean verifyUser(LoginForm loginForm) {
        UserPo userPo = userPoMapper.selectByUserSelective(loginForm.toUserPo());
        if (userPo == null) {
            log.info("the user:{} doesn't exist", loginForm.getEmail());
            return false;
        }
        // todo setContext
        ThreadContext.setUserContext(userPo);
        log.info("the user:{} verify success", userPo.getUserEmail());
        return true;
    }


    /*
     * @Autor wangzixuan
     * @Description //TODO 获取用户信息
     * @Date 15:20 2018/12/12
     * @Param
     * @return
     **/
    public UserAndUserinfoPo findUserAndUserinfo(Long id) {
        UserAndUserinfoPo userAndUserinfoPo;
        userAndUserinfoPo = userInformationPoMapper.infoselectByUserkey(id);
        return userAndUserinfoPo;
    }

    /*
     * @Autor wang
     * @Description //TODO 更新数据库中的用户信息
     * @Date 16:18 2018/12/12
     * @Param
     * @return
     **/
    public int updateUserInfo(UserInfoForm userInfoForm) {
        return userInformationPoMapper.updateByuserKeySelective(userInfoForm);
    }

    /**
     * @return boolean
     * @Author 刘亚双
     * @Description //TODO 修改密码前验证密码
     * @Date 2018/12/12 15:37
     * @Param [password, email]
     **/
    @Override
    public boolean provingPass(String password, String email) {
        UserPo userPo = userPoMapper.selectByUserEmail(email);
        if (userPo.getUserPass().equals(password)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * @return boolean
     * @Author 刘亚双
     * @Description //TODO 验证后修改密码
     * @Date 2018/12/12 16:00
     * @Param [newpass]
     **/
    @Override
    public boolean changePassword(String newpass) {
        UserPo userPo = ThreadContext.getUserContext();
        Long userkey = userPo.getUserId();
        int flag = userPoMapper.updatePasswordByPrimaryKeySelective(userkey, newpass);
        if (flag == 0) {
            return false;
        } else {
            return true;
        }

    }

    /**
     * @param base64, email]
     * @return boolean
     * @author ying
     * @description //TODO
     * @date 16:58 2018/12/18
     **/
    @Override
    public int verifyUserFace(String base64, String email) throws UserFaceException {
        UserPo po = userPoMapper.selectByUserEmail(email);
        int code = 0;
        if (Objects.isNull(po)) {
            throw new UserFaceException("email doesn't exist");
        } else {
            JSONObject json = FaceRecognition.authFace(base64, String.valueOf(po.getUserId()));
            log.info("{}", json);
            Double score = 0.0;
            try {
                score = json.getJSONObject("result").getJSONArray("user_list").getJSONObject(0).getDouble("score");
                log.info("the user email:{},score:{}", email, score);
            } catch (Exception e) {
                code = json.getInt("error_code");
            }
            if (score < 80) {
                code = 1;
            } else {
                code = 0;
                ThreadContext.setUserContext(po);
            }
        }
        return code;
    }

    /*
     * @Autor wang
     * @Description //TODO 验证邮箱，发送邮件
     * @Date 21:38 2018/12/18
     * @Param
     * @return
     **/
    @Resource
    private MailService mailService;
    @Resource
    private MailUtil mailUtil;

    @Override
    public boolean recoverPassword(String email) {
//        log.info(email);
        UserPo userPo = userPoMapper.selectByUserEmail(email);
        if (userPo != null) {
            String text = mailUtil.createLink(userPo);
            mailService.sendTextMail(email, "这是来自一校通的找回密码邮件！！！！！", text);
            return true;
        } else {
            log.error("邮箱错误");
            return false;
        }
    }

    /*
     * @Autor wang
     * @Description //TODO 得到密文，解密验证，更新密码
     * @Date 21:38 2018/12/18
     * @Param
     * @return
     **/

    @Override
    public boolean updatePwd(String descode, String newpwd) {
        String recode = "";
        try {
            recode = DESUtil.decrypt(descode);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        String delimeter = "-";
        String[] temp = recode.split(delimeter);
        long date = Long.parseLong(temp[0]);
        if (date <= System.currentTimeMillis()) {
            log.error("已过期");
            return false;
        } else {
            UserPo userPo = userPoMapper.selectByUserEmail(temp[1]);
            userPo.setUserPass(newpwd);
            userPoMapper.updateByPrimaryKeySelective(userPo);
            return true;
        }

    }
}
