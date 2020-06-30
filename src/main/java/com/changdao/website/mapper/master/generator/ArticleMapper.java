package com.changdao.website.mapper.master.generator;

import com.changdao.website.model.domain.Article;
import com.changdao.website.model.domain.ArticleExample;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ArticleMapper {
	long countByExample(ArticleExample example);

	int deleteByExample(ArticleExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Article record);

	int insertSelective(Article record);

	List<Article> selectByExample(ArticleExample example);

	Article selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Article record, @Param("example") ArticleExample example);

	int updateByExample(@Param("record") Article record, @Param("example") ArticleExample example);

	int updateByPrimaryKeySelective(Article record);

	int updateByPrimaryKey(Article record);

	@Select({"select * from changdao_article where article_post='page' order by article_url"  })
	@Results({
			@Result(property = "userId", column = "user_id"),
			@Result(property = "articleContent", column = "article_content")
	})
	List<Article> findAd();
}