package com.hnu.softwarecollege.infocenter.entity.vo;

import com.hnu.softwarecollege.infocenter.entity.po.UserPo;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
/** 
* @Description: 未来使用JsonProperty注解，接收前端消息
* @Param:  
* @return:  
* @Author: yu 
* @Date: 2018/11/7 
**/
public class LoginForm {
    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    private String password;
    @NotEmpty
    private String verifyCode;

    public UserPo toUserPo(){
        UserPo userPo = new UserPo();
        userPo.setUserEmail(getEmail());
        userPo.setUserPass(getPassword());
        return userPo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }
}
