package com.xiaomaoguai.gecco.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("weibo")
public class WeiboController {
	
	@RequestMapping("index")
	public String index(){
		return "show/weiboList";
	}
}
