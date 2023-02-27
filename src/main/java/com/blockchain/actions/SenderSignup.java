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
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Sweety
 */
@WebServlet(name = "SenderSignup", urlPatterns = {"/SenderSignup"})
public class SenderSignup extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String loginid = request.getParameter("loginid");
        String email = request.getParameter("email");
        String contactno = request.getParameter("contactno");
        String password = request.getParameter("password");
        String usertype = request.getParameter("usertype");

        java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DbConnection.getConnection();
            String query = "insert into userinfo(username,loginid,email,contactno,password,usertype) values(?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, loginid);
            ps.setString(3, email);
            ps.setString(4, contactno);
            ps.setString(3, password);

            ps.setString(5, usertype);

            int no = ps.executeUpdate();
            if (no > 0) {
                response.sendRedirect("SenderSignup.jsp?msg=success");
            } else {
                response.sendRedirect("SenderSignup.jsp?msg=faild");
            }
        } catch (Exception e) {
            System.out.println("Error at Faculty register " + e.getMessage());
            response.sendRedirect("SenderSignup.jsp?msg=faild");
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
