package conference;

import java.util.ArrayList;
import java.util.List;

public class EventManager
{
    private static List<Event> eventList = new ArrayList<>();

    public EventManager()
    {
        if(eventList.size() == 0)
        {
            eventList.add(new Event("Resume Writing", "12/02/2018", false));
            eventList.add(new Event("LinkedIn Basics", "12/01/2018", false));
            eventList.add(new Event("Networking", "12/04/2018", false));
            eventList.add(new Event("Job Search Tips", "12/07/2018", false));
            eventList.add(new Event("Your Digital Presence", "12/04/2018", false));
        }
    }

    public List<Event> getEventList()
    {
        return eventList;
    }

    public List<Event> getRemainingEvents()
    {
        List<Event> remaining = new ArrayList<>();
        for (Event e : eventList)
        {
            if (e.isCompleted())
            {
                remaining.add(e);
            }
        }
        return remaining;
    }

    public Event getEventByName(String name)
    {
        Event e = null;
        for(int i = 0; i < eventList.size(); i++)
        {
            if(eventList.get(i).getName().equals(name))
            {
                e = eventList.get(i);
            }
        }
        return e;
    }

    @Override
    public String toString()
    {
        return "EventList{" +
                "eventList=" + eventList +
                '}';
    }
}

