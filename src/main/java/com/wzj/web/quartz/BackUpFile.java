package com.wzj.web.quartz;

import com.wzj.service.service.WeChatPublicConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import springfox.documentation.annotations.ApiIgnore;


@ApiIgnore
@Component
@Lazy(value=false)
public class BackUpFile {
    private static Logger logger = LoggerFactory.getLogger(BackUpFile.class);
    @Autowired
    private WeChatPublicConfigService weChatPublicConfigService;
//    /**
//     * 半分钟备份图片文件一次
//     * */
//    @Scheduled(fixedDelay=1000*10)
//    public void backupUploadImage(){
//        String cmd="cp -r /www/server/apache-tomcat-8.5.32/webapps/ROOT/static/upload/. /www";
//        String[] cmdArr=new String[]{"/bin/sh","-c",cmd};
//        InputStream in = null;
//        String result = null;
//        try {
//            Process pro = Runtime.getRuntime().exec(cmdArr);
//            pro.waitFor();
//            in = pro.getInputStream();
//            BufferedReader read = new BufferedReader(new InputStreamReader(in));
//            while((result = read.readLine())!=null) {
//                System.out.println(result);
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//            logger.info(e.getMessage());
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//            logger.info(e.getMessage());
//        }
//    }


}
