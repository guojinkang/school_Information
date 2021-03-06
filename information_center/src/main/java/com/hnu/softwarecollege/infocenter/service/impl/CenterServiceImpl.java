package com.hnu.softwarecollege.infocenter.service.impl;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hnu.softwarecollege.infocenter.context.ThreadContext;
import com.hnu.softwarecollege.infocenter.entity.po.*;
import com.hnu.softwarecollege.infocenter.entity.vo.CurriculumForm;
import com.hnu.softwarecollege.infocenter.entity.vo.FourTag;
import com.hnu.softwarecollege.infocenter.entity.vo.SyllabusVo;
import com.hnu.softwarecollege.infocenter.mapper.*;
import com.hnu.softwarecollege.infocenter.service.CenterService;
import com.hnu.softwarecollege.infocenter.util.JsonUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.hnu.softwarecollege.infocenter.util.DoubleUtil.*;

/**
 * @ClassName CenterServiceImpl
 * @Description TODO
 * @Author liu
 * @Date 2018/11/26 8:55
 * @Version 1.0
 **/
@Service
@Slf4j

public class CenterServiceImpl implements CenterService {
    public static String resultjson;
//    String citypath = this.getClass().getClassLoader().getResource("spider/city.json").getPath();
    /*ClassPathResource resource1 = new ClassPathResource("spider/main.py");
    String spiderPath = resource1.getPath();*/
    //String spiderPath = "/home/spiderresource/main.py";
    String spiderPath ="E:\\spider\\sprderfz\\login.py";
//    InputStream inputStream1 = resource1.getInputStream();
//    URL educational= this.getClass().getResource("classpath*:spider/main.py");
//    String spiderPath = educational.getPath();
//    private File educational = new File("spider/main.py");
//    private String spiderPath = educational.getAbsolutePath();
//    private String spiderPath = educational.getPath();
//    URL predict = this.getClass().getResource("classpath*:arithmetic/test1/Predict_Application_local.py");
//    private File predict = new File("arithmetic/test1/Predict_Application_local.py");
    /*ClassPathResource resource2 = new ClassPathResource("arithmetic/test1/Predict_Application_local.py");
    String predictPath = resource2.getPath();*/
    String predictPath = "C:\\Users\\admin\\Desktop\\information_center\\arithmetic\\test1\\Predict_Application_local.py";
    /*
     * @Author 刘亚双
     * @Description //TODO 获取UserKey 找到对应教务系统的账号和密码，执行爬虫，
     * @Date 2018/11/28 14:19
     * @Param [Id, password]
     * @return java.lang.String
     **/
    @Resource
    UserInformationPoMapper userInformationPoMapper;

    public CenterServiceImpl() throws IOException {
    }

    @Override
    public void getGrade(Long userKey) {
        Long userkey = userKey;
        // set context
        UserPo userPo = new UserPo();
        userPo.setUserId(userkey);
        ThreadContext.setUserContext(userPo);
        UserInformationPo userInformationPo = userInformationPoMapper.selectByUserKey(userkey);
        String Id = userInformationPo.getInfNum().toString();
        String password =userInformationPo.getInfPass();
        String[] arg = new String[]{"python",spiderPath, Id, password};
        log.info("{}",arg[1]);
        Process process = null;
        String result = "";
        try {
            process = Runtime.getRuntime().exec(arg);
            InputStreamReader ir = new InputStreamReader(process.getInputStream(), "GBK");
            System.out.println("爬取结果"+process.toString());
            BufferedReader bufferedReader = new BufferedReader(ir);
            String line;
            while ((line = bufferedReader.readLine()) != null) {
//                log.info("{}",line);
                result += line;
                System.out.println("爬取结果"+line);
            }
            resultjson = result;
            log.info("{}",resultjson);
            bufferedReader.close();
            process.destroyForcibly();
            threadMethod();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Resource
    CenterDegreePoMapper centerDegreePoMapper;
    @Resource
    SyllabusPoMapper syllabusPoMapper;

    /*
     * @Author 刘亚双
     * @Description //TODO 根据Userkey 从数据中查询成绩信息，返回
     * @Date 2018/11/28 14:24
     * @Param []
     * @return com.hnu.softwarecollege.infocenter.entity.po.CenterDegreePo
     **/
    @Override
    public List<CenterDegreePo> gradeDB() {
        Long userkey = ThreadContext.getUserContext().getUserId();
        List<CenterDegreePo> poList = centerDegreePoMapper.findAllByUserKey(userkey);
        return poList;
    }



        protected void method(List<String> list) {
            for (int i = 0; i < list.size(); i++) {
                Long key = ThreadContext.getUserContext().getUserId();
                System.out.print("列表信息"+i);
            }

    }


    @Async
    protected void threadMethod() throws IOException {
        //System.out.println("++" + resultjson);
        ObjectMapper mapper = new ObjectMapper();
        JsonNode jsonNode = mapper.readTree(resultjson);
        String grade = jsonNode.get("GRADE").toString();
        JsonNode gradeJsonNode = mapper.readTree(grade);
        for (int i = 0; i < gradeJsonNode.size(); i++) {
            String s = gradeJsonNode.get(i).toString();

            CenterDegreePo centerDegreePo = mapper.readValue(s, CenterDegreePo.class);
            centerDegreePo.setDegreeUserkey(ThreadContext.getUserContext().getUserId());
            centerDegreePoMapper.insertSelective(centerDegreePo);
        }
        //获取课表信息  解析后存取数据库
        String coursetable = jsonNode.get("CLASS").toString();
        JsonNode courseJsonNode = mapper.readTree(coursetable);
        for(int i = 0;i<courseJsonNode.size();i++) {
            String s = courseJsonNode.get(i).toString();
            Map map = JSON.parseObject(s,Map.class);

            Long key = ThreadContext.getUserContext().getUserId();
            SyllabusPo syllabusPo=new SyllabusPo(null,map.get("classname").toString(),Integer.parseInt(map.get("startweek").toString()),Integer.parseInt(map.get("endweek").toString()),
                   Integer.parseInt(map.get("startlession").toString()),Integer.parseInt(map.get("endlession").toString()),map.get("week").toString(),map.get("address").toString(),map.get("teacher").toString(),key);
            syllabusPoMapper.insertSelective(syllabusPo);
        }


    }

    /*
     * @Author 刘亚双
     * @Description //TODO 执行 python 脚本 进行成绩分析
     * @Date 2018/11/30 17:12
     * @Param []
     * @return java.lang.String
     **/
    @Override
    public String getGradeForeast(String studentId, String courseType, String testType, String gainCerdit) {
        String[] arg = new String[]{ "python",predictPath, studentId, courseType, testType, gainCerdit};
        Arrays.stream(arg).forEach((s)->{log.info(s);});
        Process process = null;
        String result = "";
        try {
            process = Runtime.getRuntime().exec(arg);
            InputStreamReader ir = new InputStreamReader(process.getInputStream(), "UTF8");
            BufferedReader bufferedReader = new BufferedReader(ir);
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                result += line;
            }
            bufferedReader.close();
            process.destroyForcibly();
        } catch (IOException e) {
            log.error("参数输入错误！");
            e.printStackTrace();
        }
        log.info(result);
        return result;
    }

    /*
     * @Author 刘亚双
     * @Description //TODO 从数据库中查询课表信息
     * @Date 2018/12/3 9:18
     * @Param [jsonstr]
     * @return java.lang.String
     **/
    @Override
    public SyllabusVo getCourseTable(Long Userkey) {
        List<SyllabusPo> list = syllabusPoMapper.findAllByUserKey(Userkey);
        SyllabusVo syllabusVo = transform(list);
        for(SyllabusPo po:list)log.info("{}",po.toString());
        return syllabusVo;
    }

    @Override
    public SyllabusVo transform(List<SyllabusPo> list) {
        List<SyllabusPo> mondaylist = new ArrayList<>();
        List<SyllabusPo> tuesdaylist = new ArrayList<>();
        List<SyllabusPo> wednesdaylist = new ArrayList<>();
        List<SyllabusPo> thursdaylist = new ArrayList<>();
        List<SyllabusPo> fridaylist = new ArrayList<>();
        for(SyllabusPo syllabusPo:list){
            if(syllabusPo.getSyllabusWeek().equals("星期一")){
                mondaylist.add(syllabusPo);
            }
            if(syllabusPo.getSyllabusWeek().equals("星期二")){
                tuesdaylist.add(syllabusPo);
            }
            if(syllabusPo.getSyllabusWeek().equals("星期三")){
                wednesdaylist.add(syllabusPo);
            }
            if(syllabusPo.getSyllabusWeek().equals("星期四")){
                thursdaylist.add(syllabusPo);
            }
            if(syllabusPo.getSyllabusWeek().equals("星期五")){
                fridaylist.add(syllabusPo);
            }
        }
        SyllabusVo syllabusVo = new SyllabusVo();
        syllabusVo.set星期一(mondaylist);
        syllabusVo.set星期二(tuesdaylist);
        syllabusVo.set星期三(wednesdaylist);
        syllabusVo.set星期四(thursdaylist);
        syllabusVo.set星期五(fridaylist);
        return syllabusVo;
    }

    /*
     * @Author 刘亚双
     * @Description //TODO 自定义课表,插入到数据库中
     * @Date 2018/12/5 9:51
     * @Param [curriculumForm]
     * @return void
     **/
    @Override
    public int putCurriculum(CurriculumForm curriculumForm) {
        UserPo userPo = ThreadContext.getUserContext();
        Long userkey  = userPo.getUserId();
        SyllabusPo syllabusPo = new SyllabusPo(null,curriculumForm.getClassName(),
                curriculumForm.getStartWeek(),curriculumForm.getEndWeek(),curriculumForm.getStartPart(),
                curriculumForm.getEndPart(),curriculumForm.getWeek(),curriculumForm.getClassroom(),
                curriculumForm.getTeacher(),userkey);
        int sum = syllabusPoMapper.insertSelective(syllabusPo);
        return sum;
    }

    /*
     * @Author 王子璇
     * @Description //TODO 执行 分页获取 微博热搜信息 20条 一组
     * @Date 2018/12/3 15:53
     * @Param []
     * @return java.lang.String
     **/
    @Override
    public List<HotsPotPo> getHotPot(int pageNum, int pageSize) {
//        if(hotsPotPoMapper.selectByPrimaryKey())
        Page<HotsPotPo> page = PageHelper.startPage(pageNum, pageSize);
        hotsPotPoMapper.selectAll();

        page.getTotal();
        page.size();

        List<HotsPotPo> hotsPotPoList = new ArrayList<HotsPotPo>();
        for (int i = 0; i < page.size(); i++) {
            hotsPotPoList.add(page.get(i));
        }

        return hotsPotPoList;
    }

    /*
     * @Autor wang
     * @Description //TODO 将爬取的微博热搜插入（更新）到数据库
     * @Date 14:26 2018/12/5
     * @Param
     * @return void
     **/
    @Resource
    HotsPotPoMapper hotsPotPoMapper;
    public void updateHotspot(List<HotsPotPo> hotsPotPos) {
        if (hotsPotPoMapper.selectByPrimaryKey(1) != null) {
            for (HotsPotPo po : hotsPotPos) {
                hotsPotPoMapper.updateByPrimaryKeySelective(po);
            }
        } else {
            for (HotsPotPo po : hotsPotPos) {
                hotsPotPoMapper.insertSelective(po);
            }
        }
    }
    @Resource
    ResourcePoMapper resourcePoMapper;
    public void updateResource(List<ResourcePo> resourcePoList){
        for (ResourcePo po : resourcePoList){
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();

            po.setResDate(date);

            resourcePoMapper.insertSelective(po);
        }
    }
    /*
     * @Autor wang
     * @Description //TODO 获取用户成绩绩点,学分信息，并求平均数
     * @Date 14:47 2018/12/11
     * @Param 
     * @return 
    **/

    public FourTag selectForFouttag(){
        UserPo userPo = ThreadContext.getUserContext();
        Long userKey = userPo.getUserId();
//        Long userKey = 1l;
        List<CenterDegreePo> centerDegreePos = new ArrayList<CenterDegreePo>();


        //成绩的和
        Double grade = 0d;
        //非通识选修的学分和
        Double credit = 0d;
        //绩点和
        Double performancepoint = 0d;
        //已通过的通识选修的学分和
        Double choosecredit = 0d;
        //已获得的非通识选修的学分和
        Double havecredit = 0d;

        Double zero = 0d;

        centerDegreePos = centerDegreePoMapper.findAllByUserKey(userKey);
        if(centerDegreePos == null){
            log.error("成绩为空");
            return null;
        }
        Map<String,Double> grademap = new HashMap<String, Double>();
        Map<String,Double> pointmap = new HashMap<String, Double>();
        if(centerDegreePos != null){
            for(CenterDegreePo po :centerDegreePos){
                //绩点求和
                performancepoint = add(performancepoint,po.getDegreePerformancepoint());

                //学分求和
                if(po.getDegreeTestnature().equals("正常考试")){
                    if(po.getDegreeClassnature().equals("通识选修") && po.getDegreePerformancepoint() != zero){
                        choosecredit = add(choosecredit,po.getDegreeCredit());
                    }else {
                        credit = add(credit,po.getDegreeCredit());
                    }
                    if (po.getDegreePerformancepoint() != zero){
                        havecredit = add(havecredit,po.getDegreeCredit());
                    }
                }

                //判断成绩和计算绩点
                if(po.getDegreeTestnature().equals("正常考试") && !po.getDegreeGrade().equals("合格")){
                    Double sgrade = 0d;

                    sgrade = Double.parseDouble(po.getDegreeGrade());
                    grademap.put(po.getDegreeClassname(),sgrade);
                    pointmap.put(po.getDegreeClassname(),po.getDegreePerformancepoint());
                }else {
                    List<CenterDegreePo> centerDegreePos1 = centerDegreePoMapper.selectByClassname(po.getDegreeClassname());
                    if (!po.getDegreeGrade().equals("合格")){
                        Double g = 0d;Double p = 0d;Double temp = 0d;
                        for (CenterDegreePo po1 : centerDegreePos1){
                            temp = Double.parseDouble(po.getDegreeGrade());
                            if (g < temp){
                                g = temp;
                                p = po1.getDegreePerformancepoint();
                            }
                        }
                        grademap.put(po.getDegreeClassname(),g);
                        pointmap.put(po.getDegreeClassname(),p);


                    }
                }
            }
        }else {
            return null;
        }
        Double gi = 0d;
        for (Double d : grademap.values()){
            grade = add(grade,d);
            gi = add(gi,1d);
        }
        for (Double d : pointmap.values()){
            performancepoint = add(performancepoint,d);
        }

        Double sumcredit = add(credit,choosecredit);


        // 加权平均分
        Double avggrade = divide(grade,gi,2);
        avggrade = mul(avggrade,havecredit);
        avggrade = divide(avggrade,sumcredit);

        //已获得学分
//      havecredit

        //绩点
        performancepoint = divide(performancepoint,gi);

        //通识选修学分
//      choosecredit

//        List<Double> returnList = new ArrayList<Double>();
//        returnList.add(0,avggrade);
//        returnList.add(1,havecredit);
//        returnList.add(2,performancepoint);
//        returnList.add(3,choosecredit);

        FourTag fourTag = new FourTag();
        fourTag.setAvggrade(avggrade);
        fourTag.setHavacredit(havecredit);
        fourTag.setPerformancepoint(performancepoint);
        fourTag.setChoosecredit(choosecredit);

        return fourTag;
    }

    @Resource
    AvgPoMapper avgPoMapper;
    /*
     * @Author 刘亚双
     * @Description //TODO 获取两个学年各班的平均成绩
     * @Date 2018/12/23 16:33
     * @Param []
     * @return java.util.List<com.hnu.softwarecollege.infocenter.entity.po.AvgPo>
     **/
    @Override
    public List<AvgPo> getAvg() {
        List<AvgPo> list = avgPoMapper.findAll();
        return list;
    }
    /*
     * @Author 刘亚双
     * @Description //TODO 获取每个学期各班的平均成绩
     * @Date 2018/12/23 16:34
     * @Param []
     * @return java.util.List<com.hnu.softwarecollege.infocenter.entity.po.AvgPo>
     **/
    @Override
    public List<AvgPo> getFourSemester() {
        List<AvgPo> list = avgPoMapper.findFourSemester();
        return list;
    }
}
