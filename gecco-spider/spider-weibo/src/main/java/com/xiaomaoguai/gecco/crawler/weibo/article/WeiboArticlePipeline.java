package com.xiaomaoguai.gecco.crawler.weibo.article;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.PipelineName;
import com.geccocrawler.gecco.pipeline.Pipeline;
import com.xiaomaoguai.gecco.common.ArticleSourceTypeEnum;
import com.xiaomaoguai.gecco.crawler.weibo.list.WeiboList;
import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.mapper.ArticleMapper;



/**
 * 微博爬虫处理类
 * @author zhoufeng
 * @ClassName WeiboPipeline
 * @Version 1.0.0
 */
@PipelineName("weiboArticlePipeline")
@Service
public class WeiboArticlePipeline implements Pipeline<WeiboArticle> {
	private static Log log = LogFactory.getLog(WeiboArticlePipeline.class);
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public void process(WeiboArticle articleTo) {
		if (articleTo.getArticleId()!=null&&articleMapper.selectByArticleId(articleTo.getArticleId()) == null) {
			try {
				Article article = new Article();
				article.setArticleId(articleTo.getArticleId());
				article.setContent(articleTo.getContent());
				article.setAuthor(articleTo.getAuthor());
				article.setSourceType(ArticleSourceTypeEnum.WEIBO.getType());
				article.setHref("http://weibo.com"+articleTo.getHref());
				article.setChatHead(articleTo.getChatHead());
				article.setCreateTm(DateUtils.parseDate(articleTo.getCreateTime(), "yyyy-MM-dd HH:mm:ss","yyyy-MM-dd HH:mm"));
				articleMapper.insert(article);
			} catch (Exception e) {
				log.error("微博保存数据库出错:[createTm=" + articleTo.getCreateTime() + "]", e);
			}
		}
		

	}

}
