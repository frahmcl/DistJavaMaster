package conference;

public class Attendee {

    private String firstName;
    private String lastName;
    private boolean hasRSVP;

    public Attendee(String firstName, String lastName, boolean hasRSVP) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.hasRSVP = hasRSVP;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean isHasRSVP() {
        return hasRSVP;
    }

    public void setHasRSVP(boolean hasRSVP) {
        this.hasRSVP = hasRSVP;
    }
}
