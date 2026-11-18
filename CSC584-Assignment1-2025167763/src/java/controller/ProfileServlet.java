package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Retrieve data from the HTML form
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String intro = request.getParameter("intro");
        
        // Hobbies is an array because multiple checkboxes can be selected
        String[] hobbies = request.getParameterValues("hobbies");
        
        // Format hobbies into a single string for easier display in JSP
        String hobbiesString = "None selected";
        if (hobbies != null && hobbies.length > 0) {
            hobbiesString = String.join(", ", hobbies);
        }

        // 2. Set the data as attributes in the request object
        request.setAttribute("userName", name);
        request.setAttribute("userId", studentId);
        request.setAttribute("userProgram", program);
        request.setAttribute("userEmail", email);
        request.setAttribute("userHobbies", hobbiesString);
        request.setAttribute("userIntro", intro);

        // 3. Forward the request and response to the JSP page
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}