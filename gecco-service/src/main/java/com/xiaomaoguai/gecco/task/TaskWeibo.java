package com.xiaomaoguai.gecco.task;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.request.HttpGetRequest;
import com.geccocrawler.gecco.request.HttpRequest;
import com.geccocrawler.gecco.spring.SpringPipelineFactory;
import com.xiaomaoguai.gecco.common.utils.SpringContextUtil;
import com.xiaomaoguai.gecco.crawler.weibo.list.WeiboArticleListPipeline;
import com.xiaomaoguai.gecco.entity.ScheduleJob;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 说明 :
 * 作者 : WeiHui.jackson
 * 日期 : 2016/4/27 16:26
 * 版本 : 1.0.0
 */
@Service
public class TaskWeibo  implements Job {
    private static final String cookies="td_cookie=852735101; SINAGLOBAL=1863084025515.2158.1470736347656; ULV=1474164746487:6:1:1:691583448765\n" +
            ".3016.1474164746481:1472182415213; SCF=ArRIG05i5B3pomOrePnCy9mAMD5v5nF9W7zPNJ8jtuPpQ-c1itU810DgYYrRA5BvUQPOq0oxI_PXgP3AKGvrLms\n" +
            ".; SUBP=0033WrSXqPxfM72-Ws9jqgMF55529P9D9WWWzp8lHrIBm8BJdPZONHol; SUHB=0nl-Uyetkkpfoe; UOR=,,localhost\n" +
            ":8080; SUB=_2AkMg4baGf8NhqwJRmPkTymvna4p2yg_EieLBAH7sJRMxHRl-yT83qmw-tRChjuIvT3uQmmpjZ65SsHcWvj7U4A.\n" +
            ".; YF-Page-G0=140ad66ad7317901fc818d7fd7743564; _s_tentry=-; Apache=691583448765.3016.1474164746481;\n" +
            " td_cookie=852724104; login_sid_t=1846c4a821fc1beafdf0128b9a4ba93b; YF-Ugrow-G0=5b31332af1361e117ff29bb32e4d8439\n" +
            "; YF-V5-G0=c948c7abbe2dbb5da556924587966312; WBtopGlobal_register_version=058ac28f5e23153a";

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        ScheduleJob scheduleJob = (ScheduleJob) context.getMergedJobDataMap().get("scheduleJob");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
        System.out.println("任务名称 = [" + scheduleJob.getName() + "]" + " 在 " + dateFormat.format(new Date()) + " 时运行");

        SpringPipelineFactory springPipelineFactory = SpringContextUtil.getBean("springPipelineFactory");
        
        String[] persions=scheduleJob.getName().split(",");
        List<HttpRequest> reqList=new ArrayList<HttpRequest>();
        for(String persion:TaskUserManager.users.get("weibo")){
	        HttpGetRequest start =createRequestObj();

	        //start.addHeader("User-Agent", "spider");
	        start.setCharset("GBK");
            start.setUrl("http://weibo.com/"+persion+"?profile_ftype=1&is_all=1#_0");
	        reqList.add(start);
        }
        GeccoEngine.create()
        .pipelineFactory(springPipelineFactory)
        .classpath("com.xiaomaoguai.gecco.crawler.weibo.list")
        .start(reqList)
        .interval(2000)
        .loop(false)
        .run();
        
        GeccoEngine.create()
        .pipelineFactory(springPipelineFactory)
        .classpath("com.xiaomaoguai.gecco.crawler.weibo.article")
		//开始抓取的页面地址
		.start(WeiboArticleListPipeline.sortRequests)
		//开启几个爬虫线程
		.thread(1)
		//单个爬虫每次抓取完一个请求后的间隔时间
		.interval(1000)
		.loop(false)
		.start();
    }

    private  HttpGetRequest createRequestObj(){
        //设置HttpGetRequest对象属性
        HttpGetRequest start = new HttpGetRequest();
        start.addHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0");
        start.addHeader("Host", "weibo.com");
        start.addHeader("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
        start.addHeader("Accept-Encoding", "Accept-Encoding");
        start.addHeader("Upgrade-Insecure-Requests", "1");

        for(String cookiestr:cookies.split(";")){
            String[] cookieArr=cookiestr.split("=");
            start.addCookie(cookieArr[0], cookieArr[1]);
        }
        start.setCharset("GBK");
        return start;
    }
}