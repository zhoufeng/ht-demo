package com.xiaomaoguai.gecco.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaomaoguai.gecco.entity.WeiboArticle;
import com.xiaomaoguai.gecco.mapper.WeiboArticleMapper;
import com.xiaomaoguai.gecco.service.WeiboService;

@Service
public class WeiboServiceImpl implements WeiboService {

	@Autowired
	private WeiboArticleMapper weiboArticleMapper;
	
	
	@Override
	public List<WeiboArticle> articleList(Map<String,Object> params) {
		List<WeiboArticle> list=weiboArticleMapper.selectPageList();
		return list;
	}
	
}
