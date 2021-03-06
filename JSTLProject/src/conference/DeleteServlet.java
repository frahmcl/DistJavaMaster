package conference;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private String RESULT_PAGE = "schedule.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //get params
        String eventName = request.getParameter("eventName");

        //Event Lists
        EventManager events = new EventManager();
        List<Event> result = events.getEventList();
        result.remove(events.getEventByName(eventName));

        //sort result list by date
        Collections.sort(result, new Comparator<Event>()
        {
            public int compare(Event e1, Event e2)
            {
                return e1.getDate().compareTo(e2.getDate());
            }
        });

        // Parameters are read only Request object properties, but attributes
        // are read/write. We can use attributes to store data for use on
        // another page.
        request.setAttribute("events", result);

        // This object lets you forward both the request and response
        // objects to a destination page
        RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }
}
