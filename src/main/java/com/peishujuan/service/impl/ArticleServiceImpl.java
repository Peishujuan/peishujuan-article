package com.peishujuan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.peishujuan.dao.ArticleMapper;
import com.peishujuan.domain.Article;
import com.peishujuan.domain.Vo;
import com.peishujuan.service.ArticleService;
@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public PageInfo<Article> getArticleList(int pageNum, Vo vo) {
		PageHelper.startPage(pageNum, 10);
		List<Article> article = articleMapper.getArticleList(vo);
		PageInfo<Article> info = new PageInfo<Article>(article);
		return info;
	}
}
