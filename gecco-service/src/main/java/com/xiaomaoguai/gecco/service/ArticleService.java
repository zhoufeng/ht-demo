package com.xiaomaoguai.gecco.service;

import java.util.List;
import java.util.Map;

import com.xiaomaoguai.gecco.entity.Article;


public interface ArticleService {
	
	public List<Article> articleList(Map<String,Object> params);
}
