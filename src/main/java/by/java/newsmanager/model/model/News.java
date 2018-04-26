package by.java.newsmanager.model.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "news")
public class News {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "newstitle")
    private String newstitle;

    @Column(name = "newstext")
    private String newstext;

    @Column(name = "newsdate")
    private Date newsdate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNewstitle() {
        return newstitle;
    }

    public void setNewstitle(String newstitle) {
        this.newstitle = newstitle;
    }

    public String getNewstext() {
        return newstext;
    }

    public void setNewstext(String newstext) {
        this.newstext = newstext;
    }

    public Date getNewsdate() {
        return newsdate;
    }

    public void setNewsdate(Date newsdate) {
        this.newsdate = newsdate;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", newstitle='" + newstitle + '\'' +
                ", newstext='" + newstext + '\'' +
                ", newsdate=" + newsdate +
                '}';
    }
}
