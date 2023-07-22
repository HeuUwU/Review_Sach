/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Admin
 */
public class Account {

    private String email, pass, cusId, emId, role;

    public Account(String email, String pass, String cusId, String emId, String role) {
        this.email = email;
        this.pass = pass;
        this.cusId = cusId;
        this.emId = emId;
        this.role = role;
        connect();
    }

    public Account(String email, String pass) {
        this.email = email;
        this.pass = pass;
        connect();
    }

    public Account() {
        connect();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId;
    }

    public String getEmId() {
        return emId;
    }

    public void setEmId(String emId) {
        this.emId = emId;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "email=" + email + ", pass=" + pass + ", cusId=" + cusId + ", emId=" + emId + ", role=" + role + '}';
    }

    //Khai báo các thành phần xử lý database
    Connection cnn; //kết nối
    Statement stm; //thực thi câu lệnh
    PreparedStatement pstm;
    ResultSet rs; //lưu trữ và xử lý dữ liệu

    public boolean checkUser() {
        try {
            String strSelect = "Select *\n"
                    + "from Accounts\n"
                    + "where Email= ?\n"
                    + "and [Password] = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, email);
            pstm.setString(2, pass);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkUser: " + e.getMessage());
        }
        return false;
    }

    public boolean checkStatus() {
        try {
            String strSelect = "Select *\n"
                    + "from Accounts a\n"
                    + "join Customers c on a.CustomerID = c.CustomerID\n"
                    + "where a.Email= ?\n"
                    + "and a.[Password] = ?\n"
                    + "and c.[Status] = '1'";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, email);
            pstm.setString(2, pass);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkStatus: " + e.getMessage());
        }
        return false;
    }

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

    public String getNameByEmail() {
        try {
            String strSelect = "select c.FirstName, c.LastName\n"
                    + "from Customers c \n"
                    + "join Accounts a on c.CustomerID = a.CustomerID\n"
                    + "where a.Email = '" + email + "' ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String name = rs.getString(1) + " " + rs.getString(2);
                return name;
            }
        } catch (Exception e) {
            System.out.println("getNameByEmail: " + " " + e.getMessage());
        }
        return "";
    }

    public int getRoleByEmail() {
        try {
            String strSelect = "select a.Role\n"
                    + "from Customers c \n"
                    + "join Accounts a on c.CustomerID = a.CustomerID\n"
                    + "where a.Email = '" + email + "' ";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String role_String = rs.getString(1);
                int role = Integer.parseInt(role_String);
                return role;
            }
        } catch (Exception e) {
            System.out.println("getRoleByEmail: " + e.getMessage());
        }
        return 0;
    }

    public int getRoleByEmailDemo(String email) {
        try {
            String strSelect = "SELECT Role\n"
                    + "FROM Accounts\n"
                    + "WHERE Email = ?";
            PreparedStatement preparedStatement = cnn.prepareStatement(strSelect);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                int role = resultSet.getInt("Role");
                return role;
            }
        } catch (SQLException e) {
            System.out.println("getRoleByEmailDemo: " + e.getMessage());
        }
        return 0;
    }

    public String getIDByEmail(String email) {
        try {
            String strSelect = "SELECT CustomerID\n"
                    + "FROM Accounts\n"
                    + "WHERE Email = ?";
            PreparedStatement preparedStatement = cnn.prepareStatement(strSelect);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String userID = resultSet.getString("CustomerID");
                return userID;
            }
        } catch (SQLException e) {
            System.out.println("getIDByEmail: " + e.getMessage());
        }
        return null;
    }

}
