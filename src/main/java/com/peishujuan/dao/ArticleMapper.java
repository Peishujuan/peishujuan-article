package com.peishujuan.dao;

import java.util.List;

import com.peishujuan.domain.Article;
import com.peishujuan.domain.Vo;

public interface ArticleMapper {

	List<Article> getArticleList(Vo vo);

}
