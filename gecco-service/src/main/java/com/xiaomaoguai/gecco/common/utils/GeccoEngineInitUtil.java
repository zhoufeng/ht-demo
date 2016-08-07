package com.xiaomaoguai.gecco.common.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;


	
	
/**
 * 爬虫初始化
 * @author zhoufeng
 * @ClassName GeccoEngineInitUtil
 * @Version 1.0.0
 */
public class GeccoEngineInitUtil implements ApplicationContextAware {

	// Spring应用上下文环境
	private static ApplicationContext applicationContext;

	/**
	 * 实现ApplicationContextAware接口的回调方法，设置上下文环境
	 * 
	 * @param applicationContext
	 */
	public void setApplicationContext(ApplicationContext applicationContext) {
		GeccoEngineInitUtil.applicationContext = applicationContext;
	}

	/**
	 * @return ApplicationContext
	 */
	public static ApplicationContext getApplicationContext() {
		return applicationContext;
	}
}
