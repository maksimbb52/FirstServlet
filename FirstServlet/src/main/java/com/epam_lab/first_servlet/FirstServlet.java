package com.epam_lab.first_servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FirstServlet extends HttpServlet {

    private static String state = "";
    private static int counter = 0;


    public void doGet(HttpServletRequest req, HttpServletResponse res)
            throws java.io.IOException, ServletException {
        state += "1";
        res.getWriter().write("State is: " + state + "<br/>");
        req.setAttribute("state", state);
        req.getDispatcherType("/WEB-INF/jsp/index.jsp").forward(req, res);

        printCookies(req, res);
    }



    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws java.io.IOException, ServletException {
        state += "2";
        res.getWriter().write("State is: " + state + "<br/>");
        printCookies(req, res);

    }

    public void doPut(HttpServletRequest req, HttpServletResponse res)
            throws java.io.IOException, ServletException {
        state += "3";
        res.getWriter().write("State is: " + state + "<br/>");
        printCookies(req, res);
    }

    public void doDelete(HttpServletRequest req, HttpServletResponse res)
            throws java.io.IOException, ServletException {
        state += "4";
        res.getWriter().write("State is: " + state + "<br/>");
        printCookies(req, res);
    }
    private void printCookies(HttpServletRequest req, HttpServletResponse res) throws IOException {
        Cookie cookies[]=req.getCookies();
        if ((cookies == null)||(cookies.length==0))
            res.getWriter().write("No cookies");
        else {
            counter++;
            res.getWriter().write("Cookies:"+" "+counter);
        }

    }

}