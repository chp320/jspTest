package board;

import java.util.ArrayList;
import java.util.Date;

public class Article {
    public static ArrayList<Article> articleList = new ArrayList<Article>();
    public String title;
    public String handle;
    public String message;
    public Date date;

    public Article(String title, String handle, String message) {
        this.title = title;
        this.handle = handle;
        this.message = message;
        this.date = new Date();
    }
}
