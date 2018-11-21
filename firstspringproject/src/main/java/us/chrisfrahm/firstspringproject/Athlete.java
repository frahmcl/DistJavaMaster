package us.chrisfrahm.firstspringproject;

public class Athlete {
    private String name;
    private String sport;
    private String team;

    public Athlete(String name, String sport, String team) {
        this.name = name;
        this.sport = sport;
        this.team = team;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }
}
