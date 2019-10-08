package HomeServlet;

import com.sun.deploy.config.Config;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;

public class Home extends HttpServlet {
    private String name_view;

    public void init(javax.servlet.ServletConfig config) throws ServletException {
        super.init(config);
        name_view = config.getServletContext().getInitParameter("PASS_CODE");
//        String contextParam2 = config.getServletContext().getInitParameter("PASS_CODE");
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String sentText = request.getParameter("SentText");
        if (sentText.equals(name_view)) {
            request.setAttribute("data", name_view);
            System.out.println(name_view + "比較正確");
            request.getRequestDispatcher("livingRoom.jsp").forward(request, response);
        } else {
            request.setAttribute("error","wrong");
            System.out.println(name_view + "比較錯誤");
            request.getRequestDispatcher("door.jsp").forward(request, response);
        }
    }
}
