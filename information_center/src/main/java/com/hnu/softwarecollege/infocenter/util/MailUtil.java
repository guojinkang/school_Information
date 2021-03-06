package com.hnu.softwarecollege.infocenter.util;

import com.hnu.softwarecollege.infocenter.entity.po.UserPo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.Base64;
import java.util.Date;
import java.util.UUID;

/**
 * @ClassName MailUtil
 * @Description TODO
 * @Author wang
 * @Date 2018/12/18 17:01
 * @Version 1.0
 **/
@Component
@Slf4j
public class MailUtil {

    /*
     * @Autor wang
     * @Description //TODO 生成邮件连接地址
     * @Date 17:01 2018/12/18
     * @Param
     * @return
     **/

    public String createLink(UserPo userPo) {

        //生成密钥
        String secretKey = UUID.randomUUID().toString();
        //设置过期时间
        Date outDate = new Date(System.currentTimeMillis() + 30 * 60 * 1000);// 30分钟后过期
//        System.out.println(System.currentTimeMillis());
        long date = outDate.getTime() / 1000 * 1000;// 忽略毫秒数  mySql 取出时间是忽略毫秒数的

        //将用户名、过期时间、密钥生成链接密钥
        String text = date + "-" + userPo.getUserEmail() + "-" + secretKey;


        String digitalcode = null;
        try {
            digitalcode = DESUtil.encrypt(text);
        } catch (Exception e) {
            e.printStackTrace();
        }

//        Base64.getEncoder().
        digitalcode = digitalcode.replaceAll("\r|\n","");


        String basePath = "http://localhost:8080/forget?pass=";

//        String resetPassHref = digitalcode;
        String emailContent = "请勿回复本邮件.复制下面的验证码,重设密码,本邮件超过30分钟,链接将会失效，需要重新申请找回密码\n" + basePath + digitalcode;
        log.info("{}",digitalcode);
        return emailContent;
    }
}
