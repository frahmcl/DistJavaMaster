package us.frahm.genres.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class GenreController {

    @Autowired
    private us.frahm.genres.ervice.GenreService genreService;

    @RequestMapping("/genres")
    public List<Genre> getThanks() {
        return genreService.getAllGenres();
    }
    @RequestMapping("/genre/{id}")
    public Genre getTeam(@PathVariable String id) {
        return genreService.getGenre(id);
    }

    @RequestMapping(method= RequestMethod.POST, value="/genres")
    public void addGenre(@RequestBody Genre genre) {
        genreService.addGenre(genre);
    }

    @RequestMapping(method=RequestMethod.PUT, value="/genres/{id}")
    public void updateTeam(@RequestBody Genre genre, @PathVariable String id) {genreService.updateGenre(genre, id); }

    @RequestMapping(method=RequestMethod.DELETE, value="/genres/{id}")
    public void deleteTeam(@PathVariable String id) {
        genreService.deleteGenre(id);
    }

}
