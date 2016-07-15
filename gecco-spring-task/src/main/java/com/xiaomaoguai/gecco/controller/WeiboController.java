package com.xiaomaoguai.gecco.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("weibo")
public class WeiboController {
	
	@RequestMapping("/index")
	public String index(){
		return "show/weiboList";
	}
	
	@RequestMapping("/article/list")
	@ResponseBody
	public Map<String, Object>  articleList(){
		
		return null;
	}
}
