package by.java.newsmanager.model.dao;

import by.java.newsmanager.model.model.News;

import java.util.List;

public interface NewsDao {
    public void addNews(News news);
    public void updateNews(News news);
    public void removeNews(int Id);
    public News getNewsById(int Id);
    public List<News> listNews();
}
