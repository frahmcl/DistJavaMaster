package us.frahm.genres.Controllers;

import java.awt.*;

public class Genre {
    private String genre;
    private String rating;

    public Genre(String genre, String rating) {
        this.genre = genre;
        this.rating = rating;
    }

    public Genre(){

    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
}
