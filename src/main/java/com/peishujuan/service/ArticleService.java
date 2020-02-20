package com.peishujuan.service;

import com.github.pagehelper.PageInfo;
import com.peishujuan.domain.Article;
import com.peishujuan.domain.Vo;

public interface ArticleService {

	PageInfo<Article> getArticleList(int pageNum, Vo vo);

}
