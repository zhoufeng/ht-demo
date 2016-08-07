package com.xiaomaoguai.gecco.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.xiaomaoguai.gecco.entity.Article;

public interface ArticleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);
    
    @Select("select * from ds_article where article_id = #{id}") 
    Article selectByArticleId(String id);
    
    List<Article> selectPageList();
}