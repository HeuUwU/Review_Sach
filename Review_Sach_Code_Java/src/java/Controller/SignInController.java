/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class SignInController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Sign_In.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        //Nhận thông tin
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        //Xử lý thông tin
        Account u = new Account(email, password);
        boolean check = u.checkUser();
        boolean status = u.checkStatus();
        int role = u.getRoleByEmailDemo(email);
        String userID = u.getIDByEmail(email);
        session.setAttribute("userID", userID);
        //Kết quả trả về
        if (check) {
            
            if (status) {
                session.setAttribute("user", u);
                
                session.setAttribute("role", role);

                String name = u.getNameByEmail();
                session.setAttribute("name", name);
                
                String UserID = u.getIDByEmail(email);
                session.setAttribute("UserID", UserID);

                request.getRequestDispatcher("home").forward(request, response);
            } else if(role == 2) {
                session.setAttribute("user", u);

                
                session.setAttribute("role", role);

                String name = u.getNameByEmail();
                session.setAttribute("name", name);

                request.getRequestDispatcher("home").forward(request, response);
            }else{
                request.setAttribute("mess", "Your account has been locked!");
                request.getRequestDispatcher("Sign_In.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("mess", "Wrong email or password");
            request.getRequestDispatcher("Sign_In.jsp").forward(request, response);
        }
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
