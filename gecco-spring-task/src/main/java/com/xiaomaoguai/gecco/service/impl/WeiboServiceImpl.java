package com.xiaomaoguai.gecco.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.mapper.ArticleMapper;
import com.xiaomaoguai.gecco.service.WeiboService;

@Service
public class WeiboServiceImpl implements WeiboService {

	@Autowired
	private ArticleMapper articleMapper;
	
	
	@Override
	public List<Article> articleList(Map<String,Object> params) {
		List<Article> list=articleMapper.selectPageList();
		return list;
	}
	
}
