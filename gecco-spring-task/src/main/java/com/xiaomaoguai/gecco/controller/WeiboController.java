package com.xiaomaoguai.gecco.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.service.WeiboService;

@Controller
@RequestMapping("article")
public class WeiboController {
	
	@Autowired
	private WeiboService weiboService;
	
	@RequestMapping("/index")
	public String index(){
		return "show/weiboList";
	}
	
	@RequestMapping("/article/list")
	@ResponseBody
	public Map<String, Object>  articleList(){
		Map<String,Object> ret=new HashMap<String,Object>();
		List<Article> articleList=weiboService.articleList(new HashMap());
		ret.put("list", articleList);
		return ret;
	}
}
