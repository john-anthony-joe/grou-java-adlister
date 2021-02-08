package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String image_url;
    private int start_year;
    private int end_year;
    private String description;

    public Ad(long id, long userId, String title, String image_url, int start_year, int end_year, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.image_url = image_url;
        this.start_year = start_year;
        this.end_year = end_year;
        this.description = description;
    }

    public Ad(long userId, String title, String image_url, int start_year, int end_year, String description) {
        this.userId = userId;
        this.title = title;
        this.image_url = image_url;
        this.start_year = start_year;
        this.end_year = end_year;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public int getStart_year() {
        return start_year;
    }

    public void setStart_year(int start_year) {
        this.start_year = start_year;
    }

    public int getEnd_year() {
        return end_year;
    }

    public void setEnd_year(int end_year) {
        this.end_year = end_year;
    }
}
