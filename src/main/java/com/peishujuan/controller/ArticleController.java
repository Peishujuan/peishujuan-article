package com.peishujuan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.peishujuan.domain.Article;
import com.peishujuan.domain.Vo;
import com.peishujuan.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("list")
	public String list(Model model,Vo vo,@RequestParam(defaultValue = "1")int pageNum) {
		PageInfo<Article> info = articleService.getArticleList(pageNum,vo);
		model.addAttribute("vo", vo);
		model.addAttribute("info", info);
		return "list";
		
	}
}
