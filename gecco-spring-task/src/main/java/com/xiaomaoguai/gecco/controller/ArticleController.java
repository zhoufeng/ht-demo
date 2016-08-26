package com.xiaomaoguai.gecco.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.service.ArticleService;

@Controller
@RequestMapping("article")
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/index")
	public ModelAndView index(@RequestParam Integer type){
		Map<String,Object> model=new HashMap<String, Object>();
		if(type==null){
			type=1;
		}
		model.put("type", type);
		return new ModelAndView("show/weiboList",model);
	}
	
	@RequestMapping("/article/list")
	@ResponseBody
	public Map<String, Object>  articleList(HttpServletRequest request){
		Integer type=Integer.valueOf(request.getParameter("type"));
		Map<String,Object> ret=new HashMap<String,Object>();
		Map<String,Object> param=new HashMap<>(8);
		param.put("type", type);
		List<Article> articleList=articleService.articleList(param);
		ret.put("list", articleList);
		return ret;
	}
}
