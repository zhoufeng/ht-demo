package com.xiaomaoguai.gecco.crawler.weibo;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.PipelineName;
import com.geccocrawler.gecco.pipeline.Pipeline;
import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.mapper.ArticleMapper;



/**
 * 微博爬虫处理类
 * @author zhoufeng
 * @ClassName WeiboPipeline
 * @Version 1.0.0
 */
@PipelineName("weiboPipeline")
@Service
public class WeiboPipeline implements Pipeline<HomPage> {
	private static Log log = LogFactory.getLog(GeccoEngine.class);
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public void process(HomPage bean) {
		for (WeiboArticle article : bean.getArticleList()) {
			System.out.println(article.getCreateTime() + ":" + article.getContent());
		}
		
		
		for (WeiboArticle articleTo : bean.getArticleList()) {
			if (articleMapper.selectByArticleId(articleTo.getArticleId()) != null) {
				break;
			} else {
				try {
					Article article = new Article();
					article.setArticleId(articleTo.getArticleId());
					article.setContent(articleTo.getContent());
					article.setAuthor(bean.getAuthor());
					article.setCreateTm(DateUtils.parseDate(articleTo.getCreateTime(), "yyyy-MM-dd HH:mm:ss","yyyy-MM-dd HH:mm"));
					articleMapper.insert(article);
				} catch (Exception e) {
					log.error("微博保存数据库出错:[createTm=" + articleTo.getCreateTime() + "]", e);
				}
			}
		}
	}

}
