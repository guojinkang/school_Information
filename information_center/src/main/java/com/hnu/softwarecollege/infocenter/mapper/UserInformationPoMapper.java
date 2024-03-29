package com.hnu.softwarecollege.infocenter.mapper;

import com.hnu.softwarecollege.infocenter.entity.po.UserAndUserinfoPo;
import com.hnu.softwarecollege.infocenter.entity.po.UserInformationPo;
import com.hnu.softwarecollege.infocenter.entity.vo.UserInfoForm;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserInformationPoMapper {
    int deleteByPrimaryKey(Long infId);

    int insert(UserInformationPo record);

    int insertSelective(UserInformationPo record);

    UserInformationPo selectByPrimaryKey(Long infId);

    int updateByPrimaryKeySelective(UserInformationPo record);

    int updateByPrimaryKey(UserInformationPo record);
    
    UserInformationPo selectByUserKey(Long userkey);

    UserAndUserinfoPo infoselectByUserkey(Long userkey);

    int updateByuserKeySelective(UserInfoForm userInfoForm);
}