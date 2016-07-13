package com.xiaomaoguai.gecco.mapper;

import org.apache.ibatis.annotations.Select;

import com.xiaomaoguai.gecco.entity.WeiboArticle;

public interface WeiboArticleMapper {
    int deleteByPrimaryKey(Long id);

    int insert(WeiboArticle record);

    int insertSelective(WeiboArticle record);

    WeiboArticle selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(WeiboArticle record);

    int updateByPrimaryKey(WeiboArticle record);
    
    @Select("select * from weibo_article where article_id = #{id}") 
    WeiboArticle selectByArticleId(Long id);
}