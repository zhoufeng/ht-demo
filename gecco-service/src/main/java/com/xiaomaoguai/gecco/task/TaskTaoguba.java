package com.xiaomaoguai.gecco.task;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.request.HttpGetRequest;
import com.geccocrawler.gecco.spring.SpringPipelineFactory;
import com.xiaomaoguai.gecco.common.utils.SpringContextUtil;
import com.xiaomaoguai.gecco.entity.ScheduleJob;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 说明 :淘股吧task任务
 * 作者 : zhoufeng
 * 日期 : 2016/4/27 16:26
 * 版本 : 1.0.0
 */
//@Service
public class TaskTaoguba  implements Job {
	private static final String cookies="CNZZDATA1574657=cnzz_eid%3D1594779987-1469604292-%26ntime%3D1472001974; tgbuser=251331; tgbpwd=5426428033Fopl6gondcvshvsh; td_cookie=429057643; zhihu=1; bdshare_firstime=1470027696474; JSESSIONID=617D15D5B85594B60B33267D0FE2D61C-n1";
	
    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        ScheduleJob scheduleJob = (ScheduleJob) context.getMergedJobDataMap().get("scheduleJob");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        System.out.println("任务名称 = [" + scheduleJob.getName() + "]" + " 在 " + dateFormat.format(new Date()) + " 时运行");

        SpringPipelineFactory springPipelineFactory = SpringContextUtil.getBean("springPipelineFactory");
        
        //设置HttpGetRequest对象属性
        HttpGetRequest start = new HttpGetRequest();
		start.addHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0");
		//start.addHeader("Host", "www.taoguba.com.cn");
		//start.addHeader("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
		//start.addHeader("Accept-Encoding", "Accept-Encoding");
		
		for(String cookiestr:cookies.split(";")){
			String[] cookieArr=cookiestr.split("=");
			start.addCookie(cookieArr[0], cookieArr[1]);
		}
		start.setCharset("GBK");
        
        
        String[] persions=scheduleJob.getName().split(",");
        for(String persion:persions){
	        start.setUrl("http://www.taoguba.com.cn/moreTopic?userID="+persion);
	        GeccoEngine.create()
	                .pipelineFactory(springPipelineFactory)
	                .classpath("com.xiaomaoguai.gecco.crawler.taoguba")
	                .start(start)
	                .interval(2000)
	                .loop(false)
	                .run();
        }
    }
}