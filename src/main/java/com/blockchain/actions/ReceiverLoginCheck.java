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

@WebServlet(name = "ReceiverLoginCheck", urlPatterns = {"/ReceiverLoginCheck"})
public class ReceiverLoginCheck extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String loginid = request.getParameter("loginid");
            String password = request.getParameter("password");

            Connection con = DbConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from receiver_info where loginid='" + loginid + "'");
            if (rt.next()) {
                String u = rt.getString("username");
                String p = rt.getString("password");
                String email = rt.getString("email");
                int contactno = rt.getInt("contactno");
                String usertype = rt.getString("usertype");
                
                
                String loginid = rt.getString("loginid");
                System.out.println(loginid);
                String activate = rt.getString("status");
                String receivername = rt.getString("receivername");
                if (password.equalsIgnoreCase(p)) {
                    if (activate.equalsIgnoreCase("Authorized")) {
                        HttpSession user = request.getSession();
                        user.setAttribute("username", receivername);
                        
                        user.setAttribute("loginid", loginid);
                        user.setAttribute("password", password);
                         user.setAttribute("contactno", contactno);
                        user.setAttribute("usertype", usertype);
                        response.sendRedirect("receiverHome.jsp");
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
