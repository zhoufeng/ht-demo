package com.xiaomaoguai.gecco.crawler.taoguba;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.PipelineName;
import com.geccocrawler.gecco.pipeline.Pipeline;
import com.xiaomaoguai.gecco.common.ArticleSourceTypeEnum;
import com.xiaomaoguai.gecco.entity.Article;
import com.xiaomaoguai.gecco.mapper.ArticleMapper;



/**
 * 微博爬虫处理类
 * @author zhoufeng
 * @ClassName WeiboPipeline
 * @Version 1.0.0
 */
@PipelineName("taogubaPipeline")
@Service
public class TaogubaPipeline implements Pipeline<BlogList> {
	private static Log log = LogFactory.getLog(GeccoEngine.class);
	private static final String href_prefix="http://www.taoguba.com.cn/";
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public void process(BlogList bean) {
		
		for(TaogubaArticle articleTo : bean.getArticleList()) {
			String href=articleTo.getHref();
			String articleId="taoguba_"+href.split("/")[1];
			if (articleMapper.selectByArticleId(articleId) != null) {
				break;
			} else {
				Article article = new Article();
				try {
					article.setArticleId(articleId);
					article.setContent(articleTo.getContent().replaceAll(href, href_prefix+href));
					article.setAuthor(bean.getAuthor());
					article.setHref(href_prefix+href);
					article.setSourceType(ArticleSourceTypeEnum.TAOGUBA.getType());
					article.setCreateTm(DateUtils.parseDate(articleTo.getHtml().get(articleTo.getHtml().size()-1), "yyyy-MM-dd HH:mm:ss","yyyy-MM-dd"));
					articleMapper.insert(article);
				} catch (Exception e) {
					log.error("淘股吧保存数据库出错:[createTm=" + article.getCreateTm() + "]", e);
				}
			}
		}
	}

}
