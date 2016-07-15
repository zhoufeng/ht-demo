package com.xiaomaoguai.gecco.service;

import java.util.List;
import java.util.Map;

import com.geccocrawler.gecco.demo.sogouwx.Article;

public interface WeiboService {
	
	public List<Article> articleList(Map<String,Object> params);
}
