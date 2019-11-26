package com.ssafy.controller;


import javax.activation.CommandMap;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.util.WebCrawler;

@Controller
public class CrawlerController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="openFood.do")
	public ModelAndView openFood(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("main");
		WebCrawler crawler = new WebCrawler();
		
		mav.addObject("foodNews",crawler.getFoodNews());
		
		return mav;
	}
}
