package us.frahm.genres.ervice;

import org.springframework.stereotype.Service;
import us.frahm.genres.Controllers.Genre;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class GenreService {
    private List<Genre> genres = new ArrayList<>(Arrays.asList(
            new Genre("Horror", "1"),
            new Genre("Sci-Fi", "4"),
            new Genre("Romance", "1"),
            new Genre("Action", "2"),
            new Genre("Comedy", "4")
    ));

    public List<Genre> getAllGenres() {
        return genres;
    }

    public Genre getGenre(String id) {
        return genres.stream().filter(t -> t.getGenre().contains(id)).findFirst().get();
    }

    public void addGenre(Genre team) {
        genres.add(team);
    }

    public void updateGenre(Genre genre, String id) {
        for(int i=0;i < genres.size() ;i++) {
            Genre t = genres.get(i);
            if (t.getGenre().equals(id)) {
                genres.set(i,genre);
                return;
            }
        }
    }

    public void deleteGenre(String id) {
        genres.removeIf(t -> t.getGenre().equals(id));
    }
}

