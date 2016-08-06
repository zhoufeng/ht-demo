package com.xiaomaoguai.gecco.entity;

//implements HtmlBean
public class CategoryType  {

    private Integer id;

    //@Text
    //@HtmlField(cssPath = "a")
    private String tag;

    //@Href
    //@HtmlField(cssPath = "a")
    private String url;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag == null ? null : tag.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "CategoryType{" +
                "id=" + id +
                ", tag='" + tag + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}