package com.changdao.website.mapper.master.generator;

import com.changdao.website.model.domain.ArticleTag;
import com.changdao.website.model.domain.ArticleTagExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleTagMapper {
	long countByExample(ArticleTagExample example);

	int deleteByExample(ArticleTagExample example);

	int insert(ArticleTag record);

	int insertSelective(ArticleTag record);

	List<ArticleTag> selectByExample(ArticleTagExample example);

	int updateByExampleSelective(@Param("record") ArticleTag record, @Param("example") ArticleTagExample example);

	int updateByExample(@Param("record") ArticleTag record, @Param("example") ArticleTagExample example);
}