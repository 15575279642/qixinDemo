package com.demo.vo;

import com.demo.entities.News;
import com.demo.entities.NewsPic;
import com.demo.entities.Picture;

import java.util.List;

public class NewsVO {
    private News news;
    private List<NewsPic> newsPicList;

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public List<NewsPic> getNewsPicList() {
        return newsPicList;
    }

    public void setNewsPicList(List<NewsPic> newsPicList) {
        this.newsPicList = newsPicList;
    }
}
