package us.chrisfrahm.firstspringproject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class AthleteController {
    @RequestMapping("/athletes")
    public List<Athlete> getAllSongs() {
        List<Athlete> athletes = new ArrayList<>();
        athletes.add(new Athlete("Aaron Rodgers","Football", "Green Bay Packers"));
        athletes.add(new Athlete("Giannis  Antetokounmpo","Basketball", "Milwaukee Bucks"));
        athletes.add(new Athlete("Christian Yelich","Baseball", "Milwaukee Brewers"));
        return athletes;
    }
}
