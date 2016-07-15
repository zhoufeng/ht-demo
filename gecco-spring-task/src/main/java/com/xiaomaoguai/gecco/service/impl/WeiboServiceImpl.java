package com.xiaomaoguai.gecco.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.geccocrawler.gecco.demo.sogouwx.Article;
import com.xiaomaoguai.gecco.mapper.WeiboArticleMapper;
import com.xiaomaoguai.gecco.service.WeiboService;

public class WeiboServiceImpl implements WeiboService {

	@Autowired
	private WeiboArticleMapper weiboArticleMapper;
	
	
	@Override
	public List<Article> articleList(Map<String,Object> params) {
		//List<Article> list=weiboArticleMapper.
		return null;
	}
	
}
