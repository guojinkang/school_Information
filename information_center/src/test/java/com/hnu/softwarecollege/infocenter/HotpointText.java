package com.hnu.softwarecollege.infocenter;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hnu.softwarecollege.infocenter.entity.po.HotsPotPo;
import com.hnu.softwarecollege.infocenter.service.CenterService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.io.File;


public class HotpointText {


    public static void main(String [] args){
        File weiboClawer = new File("E:\\spider\\weibohot-clawer.py");
        String weiboClawerpath = weiboClawer.getAbsolutePath();
        System.out.println("执行路径"+weiboClawerpath);

        String[] arg = new String[]{"python",weiboClawerpath};
        List<HotsPotPo> hotsPotPoList = null;
        Process process = null;

        try {
            //执行脚本文件
            process = Runtime.getRuntime().exec(arg);
            //IO流输出
            InputStreamReader inputStreamReader = new InputStreamReader(process.getInputStream(),"UTF8");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            //将json字符串存入String类型中
            String arrjson = bufferedReader.readLine();
            System.out.print(arrjson);


            bufferedReader.close();
            inputStreamReader.close();
        } catch (IOException e) {
            System.out.println("执行错误");
            e.printStackTrace();
        }


    }
}
