package by.java.newsmanager.model.service;

import by.java.newsmanager.model.model.News;

import java.util.List;

public interface NewsService {
    public void addNews(News news);

    public void updateNews(News news);

    public void removeNews(int id);

    public News getNewsById(int id);

    public List<News> listNews();
}
