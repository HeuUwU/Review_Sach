/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Comment {

    private String comId, content, proId, cusId, rating, name, emId;

    public Comment(String comId, String content, String proId, String cusId, String rating, String name) {
        this.comId = comId;
        this.content = content;
        this.proId = proId;
        this.cusId = cusId;
        this.rating = rating;
        this.name = name;
        connect();
    }

    public Comment(String content, String rating, String name, String emId) {
        this.content = content;
        this.rating = rating;
        this.name = name;
        this.emId = emId;
        connect();
    }

    public Comment() {
        connect();
    }

    public Comment(String name) {
        this.name = name;
        connect();
    }

    public String getEmId() {
        return emId;
    }

    public void setEmId(String emId) {
        this.emId = emId;
    }

    public String getComId() {
        return comId;
    }

    public void setComId(String comId) {
        this.comId = comId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getProId() {
        return proId;
    }

    public void setProId(String proId) {
        this.proId = proId;
    }

    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Comment{" + "comId=" + comId + ", content=" + content + ", proId=" + proId + ", cusId=" + cusId + ", rating=" + rating + ", name=" + name + ", emId=" + emId + '}';
    }

    //Khai báo các thành phần xử lý database
    Connection cnn; //kết nối
    Statement stm; //thực thi câu lệnh
    PreparedStatement pstm;
    ResultSet rs; //lưu trữ và xử lý dữ liệu

    private void connect() {
        try {
            cnn = (new DBContext()).connection;
            if (cnn != null) {
                System.out.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {
        }
    }

    public int getCommentById(String id) {
        try {
            String strSelect = "SELECT COUNT(CommentId) AS CommentCount\n"
                    + "FROM Comment\n"
                    + "where ProductId = '" + id + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String comment_String = rs.getString(1);
                int comment = Integer.parseInt(comment_String);
                return comment;
            }
        } catch (Exception e) {
            System.out.println("getCommentById: " + e.getMessage());
        }
        return 0;
    }

    public ArrayList<Comment> getListCommentById(String id) {
        ArrayList<Comment> data = new ArrayList<Comment>();
        try {
            String strSelect = "select *\n"
                    + "from Comment co\n"
                    + "join Customers cu on co.CustomerId=cu.CustomerID\n"
                    + "where co.ProductId = '" + id + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String content = rs.getString(2);
                String rating = rs.getString(5);
                String emId = rs.getString(6);
                String name = rs.getString(8) + " " + rs.getString(9);

                data.add(new Comment(content, rating, name, emId));
            }
        } catch (Exception e) {
            System.out.println("getListCommentById: " + e.getMessage());
        }
        return data;
    }

    public void addComment(String content, String productID, String customerID, String rating) {
        try {

            String strUpdate = "INSERT INTO [dbo].[Comment]\n"
                    + "           ([Content]\n"
                    + "           ,[ProductId]\n"
                    + "           ,[CustomerId]\n"
                    + "           ,[Rating])\n"
                    + "     VALUES(?, ?, ?, ?)";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, content);
            pstm.setString(2, productID);
            pstm.setString(3, customerID);
            pstm.setString(4, rating.toString());
            pstm.execute();
        } catch (Exception e) {
            System.out.println("addComment:" + e.getMessage());
        }
    }

    public ArrayList<Comment> getListComment() {
        ArrayList<Comment> data = new ArrayList<Comment>();
        try {
            String strSelect = "select *\n"
                    + "from Comment";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String CommentId = rs.getString(1);
                String Content = rs.getString(2);
                String ProductId = rs.getString(3);
                String CustomerId = rs.getString(4);
                String Rating = rs.getString(5);
                String EmployeeId = rs.getString(6);

                data.add(new Comment(CommentId, Content, ProductId, CustomerId, Rating, EmployeeId));
            }
        } catch (Exception e) {
            System.out.println("getListCustomer: " + e.getMessage());
        }
        return data;
    }

    public void changeStatus(String id, String status) {
        Integer employeeID = null;
        try {
            String strUpdate = "UPDATE Comment\n"
                    + "SET EmployeeID = ?\n"
                    + "WHERE CommentId = ?";
            pstm = cnn.prepareStatement(strUpdate);
            if (status.equals("null")) {
                employeeID = 1;
            }
            pstm.setObject(1, employeeID);
            pstm.setString(2, id);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("changeStatus: " + e.getMessage());
        }
    }

    public void deleteComment(String id) {
        try {
            String strUpdate = "delete from Comment\n"
                    + "where CommentId = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setInt(1, Integer.parseInt(id));
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Delete:" + e.getMessage());
        }
    }

}
