package com.xiaomaoguai.gecco.crawler.weibo.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.request.HttpGetRequest;

/**
 * 微博列表页面
 * @author zhoufeng
 * @ClassName HomPage
 * @Version 1.0.0
 */
@RunWith(SpringJUnit4ClassRunner.class)  //使用junit4进行测试  
@ContextConfiguration   
({"/spring/spring-service.xml"})
public class WeiboTest{
	 
	/**
	 * serialVersionUID:TODO(用一句话描述这个变量表示什么).
	 * @since JDK 1.6
	 */
	private static final long serialVersionUID = 1L;

	@Test
	public void testFetch(){
		HttpGetRequest start = new HttpGetRequest("http://weibo.com/kylinclub");
		//HttpGetRequest start = new HttpGetRequest("http://weibo.com/hecmcn");
		start.addHeader("User-Agent", "spider");
        start.setCharset("GBK");
        GeccoEngine.create()
                .classpath("com.xiaomaoguai.gecco.crawler.weibo")
                .start(start)
                .interval(1000)
                .loop(false)
                .run();
	}

}
