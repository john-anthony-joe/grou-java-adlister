package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "controllers.EditUpdateServlet", urlPatterns = "/editUpdate")
public class EditUpdateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        String adId = request.getParameter("id");
        System.out.println(Long.parseLong(adId));
        request.setAttribute("editAd", DaoFactory.getAdsDao().adById(Long.parseLong(adId)));

        request.getRequestDispatcher("/WEB-INF/ads/editUpdate.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        String adId = request.getParameter("id");
        System.out.println(Long.parseLong(adId));
        request.setAttribute("editAd", DaoFactory.getAdsDao().adById(Long.parseLong(adId)));

        request.getRequestDispatcher("/WEB-INF/ads/editUpdate.jsp").forward(request, response);
    }
}
