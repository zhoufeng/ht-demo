package com.xiaomaoguai.gecco.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
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
    
    @Select("select * from ds_article where source_type = #{type} order by create_tm desc limit 50") 
    @ResultMap("com.xiaomaoguai.gecco.mapper.ArticleMapper.BaseResultMap")
    List<Article> selectPageList(Map<String,Object> params);
}
