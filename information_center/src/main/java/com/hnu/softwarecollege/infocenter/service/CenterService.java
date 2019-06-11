package com.hnu.softwarecollege.infocenter.service;

import com.hnu.softwarecollege.infocenter.entity.po.*;
import com.hnu.softwarecollege.infocenter.entity.vo.CurriculumForm;
import com.hnu.softwarecollege.infocenter.entity.vo.FourTag;
import com.hnu.softwarecollege.infocenter.entity.vo.SyllabusVo;

import java.util.List;

public interface CenterService {
    public void getGrade(Long userKey);
    public List<CenterDegreePo> gradeDB();
    public String getGradeForeast(String studentId,String courseType,String testType,String gainCredit);
    public List<HotsPotPo> getHotPot(int pageNum,int pageSize);
    public void updateHotspot(List<HotsPotPo> hotsPotPos);
    public void updateResource(List<ResourcePo> resourcePoList);
    public SyllabusVo getCourseTable(Long userkey);
    public int putCurriculum(CurriculumForm curriculumForm);
    public FourTag selectForFouttag();
    public SyllabusVo transform(List<SyllabusPo> list);
    public List<AvgPo> getAvg();
    public List<AvgPo> getFourSemester();
}
