/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blockchain.actions;

import com.blockchain.db.DbConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Sweety
 */
@WebServlet(name = "SenderLoginCheck", urlPatterns = {"/SenderLoginCheck"})
public class SenderLoginCheck extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("username");
            String pass = request.getParameter("password");

            Connection con = DbConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from senderinfo where username='" + username + "'");
            if (rt.next()) {
                String p = rt.getString("password");
                int id = rt.getInt("id");
                System.out.println(id);
                String activate = rt.getString("status");
                String name = rt.getString("username");
                if (pass.equalsIgnoreCase(p)) {
                    if (activate.equalsIgnoreCase("Authorized")) {
                        HttpSession user = request.getSession();
                      
                        user.setAttribute("username", username);
                        user.setAttribute("id", id);

                        response.sendRedirect("senderlogin.jsp");
                    } else {
                        out.println("Your not Yet Activeted");
                    }
                } else {
                    out.println("incorrect password");
                }
            } else {
                out.println("Incorrect username");
            }
        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

