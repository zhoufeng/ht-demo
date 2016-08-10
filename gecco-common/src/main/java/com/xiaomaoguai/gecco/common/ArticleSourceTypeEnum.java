/**
 * Project Name:gecco-gov-test
 * File Name:AticleSourceTypeEnum.java
 * Package Name:com.xiaomaoguai.gecco.common
 * Date:2016-8-10下午1:43:46
 * Copyright (c) 2016, chenzhou1025@126.com All Rights Reserved.
 *
*/

package com.xiaomaoguai.gecco.common;
/**
 * ClassName:AticleSourceTypeEnum <br/>
 * Function: 文章来源. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2016-8-10 下午1:43:46 <br/>
 * @author   kmn
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
public enum ArticleSourceTypeEnum {
	
	WEIBO(1,"微博"),TAOGUBA(2,"淘股吧");
	
	private Integer type;
	private String name;
	private ArticleSourceTypeEnum(Integer type,String name){
		this.type=type;
		this.name=name;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}

