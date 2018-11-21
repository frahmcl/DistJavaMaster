package conference;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    private String RESULT_PAGE = "account.jsp";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        request.setAttribute("login", name);

        // This object lets you forward both the request and response
        // objects to a destination page

            RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
            view.forward(request, response);

    }
}
