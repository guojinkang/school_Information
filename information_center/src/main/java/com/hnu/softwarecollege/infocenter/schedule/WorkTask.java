package com.hnu.softwarecollege.infocenter.schedule;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hnu.softwarecollege.infocenter.entity.po.HotsPotPo;
import com.hnu.softwarecollege.infocenter.entity.po.ResourcePo;
import com.hnu.softwarecollege.infocenter.service.CenterService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

@Slf4j
@EnableScheduling
@Configuration
public class WorkTask {
    private File weiboClawer = new File("E:\\spider\\zhaopin.py");
    private String weiboClawerpath = weiboClawer.getAbsolutePath();
    @Resource
    public ObjectMapper mapper;

    @Resource
    public CenterService centerService;

    @Scheduled(cron ="0 */36 * * * ?")
    public int runZhaoPinClawer(){
        //python脚本路径

        String[] arg = new String[]{"python",weiboClawerpath};
        List<ResourcePo> resourceList = null;
        Process process = null;

        try {
            //执行脚本文件
            process = Runtime.getRuntime().exec(arg);
            //IO流输出
            InputStreamReader inputStreamReader = new InputStreamReader(process.getInputStream(),"GBK");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            //将json字符串存入String类型中
            String arrjson = bufferedReader.readLine();
            System.out.print(arrjson);

            resourceList = mapper.readValue(arrjson,new TypeReference<List<ResourcePo>>(){});

            bufferedReader.close();
            inputStreamReader.close();
        } catch (IOException e) {
            log.error("调用Python脚本错误");
            e.printStackTrace();
        }

        centerService.updateResource(resourceList);

        return 1;
    }

}
