/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Comment;
import Model.Product;
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
public class BookDetailController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Product p = new Product();

        String id = request.getParameter("id");
        session.setAttribute("id", id);

        ArrayList<Product> data = p.getListProductByViews();
        session.setAttribute("data", data);

        ArrayList<Product> detail = p.getListProductById(id);
        session.setAttribute("detail", detail);

        Comment c = new Comment();
        int comment = c.getCommentById(id);
        session.setAttribute("comment", comment);

        ArrayList<Comment> customer = c.getListCommentById(id);
        session.setAttribute("customer", customer);

        request.getRequestDispatcher("Book_Detail.jsp").forward(request, response);
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
        HttpSession session = request.getSession();

        //String productId = request.getParameter("id");
        String productId = (String) session.getAttribute("id");
        String userId = (String) session.getAttribute("UserID");
        //String userID = (String) session.getAttribute("UserID");
        String rating = request.getParameter("rating");
        String comment = request.getParameter("comment");

        Comment c = new Comment();
        Product p = new Product();

        c.addComment(comment, productId, userId, rating);
        
        ArrayList<Product> data = p.getListProductByViews();
        session.setAttribute("data", data);

        ArrayList<Product> detail = p.getListProductById(productId);
        session.setAttribute("detail", detail);

        int comment1 = c.getCommentById(productId);
        session.setAttribute("comment", comment1);

        ArrayList<Comment> customer = c.getListCommentById(productId);
        session.setAttribute("customer", customer);

        request.getRequestDispatcher("Book_Detail.jsp").forward(request, response);
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
