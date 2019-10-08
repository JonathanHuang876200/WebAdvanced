package Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;

//@WebFilter("/Save")
public class Filter implements javax.servlet.Filter {
    String initialAccount;

    public void init(FilterConfig config) throws ServletException {
        System.out.println("初始值: " + config.getInitParameter("account"));
        initialAccount = config.getInitParameter("account");
    }

    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, javax.servlet.FilterChain chain) throws javax.servlet.ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = ((HttpServletRequest) request).getSession();
        System.out.println("Filter判斷Session有沒有值: " + session.getAttribute("account"));    /*判斷有沒有session*/

//        session.setAttribute("account", "setValue");
        String get = (String) session.getAttribute("account");
        if (get == null || get.trim().equals("")) {
            System.out.println("session is null: " + session.getAttribute("account"));
            ((HttpServletResponse) response).sendRedirect("login.jsp");
        } else {
            System.out.println("session is not null: " + session.getAttribute("account"));
            chain.doFilter(request, response);
        }
    }
}



