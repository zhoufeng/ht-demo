package com.xiaomaoguai.gecco.service;

import java.util.List;
import java.util.Map;

import com.geccocrawler.gecco.demo.sogouwx.Article;
import com.xiaomaoguai.gecco.entity.WeiboArticle;

public interface WeiboService {
	
	public List<WeiboArticle> articleList(Map<String,Object> params);
}
