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
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Product {

    private String proId, name, content, catId, image, emID, view;

    public Product(String proId, String name, String content, String catId, String image, String emID, String view) {
        this.proId = proId;
        this.name = name;
        this.content = content;
        this.catId = catId;
        this.image = image;
        this.emID = emID;
        this.view = view;
        connect();
    }
    
    public Product(String proId, String name) {
        this.proId = proId;
        this.name = name;
        connect();
    }

    public Product() {
        connect();
    }

    public String getProId() {
        return proId;
    }

    public void setProId(String proId) {
        this.proId = proId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCatId() {
        return catId;
    }

    public void setCatId(String catId) {
        this.catId = catId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmID() {
        return emID;
    }

    public void setEmID(String emID) {
        this.emID = emID;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
    }

    @Override
    public String toString() {
        return "Product{" + "proId=" + proId + ", name=" + name + ", content=" + content + ", catId=" + catId + ", image=" + image + ", emID=" + emID + ", view=" + view + '}';
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

    public ArrayList<Product> getListProductByViews() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select TOP 6 * from Products\n"
                    + "ORDER BY Views DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6);
                String view = rs.getString(7);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getListTimeTable: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProductByFiction() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select TOP 6 * from Products\n"
                    + "where CategoryID = 1\n"
                    + "ORDER BY Views DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6);
                String view = rs.getString(7);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getListTimeTable: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProductByScience() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select TOP 6 * from Products\n"
                    + "where CategoryID = 3\n"
                    + "ORDER BY Views DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6);
                String view = rs.getString(7);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getListTimeTable: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getAllListProduct() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select * from Products\n"
                    + "ORDER BY ProductID DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6);
                String view = rs.getString(7);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getAllListProduct: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getAllListProductPro() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select p.ProductID, p.ProductName, p.ProductDescription, c.CategoryName, p.image, e.LastName, e.FirstName,p.Views\n"
                    + "from Products p\n"
                    + "join Categories c on c.CategoryID = p.CategoryID\n"
                    + "join Employees e on e.EmployeeID = p.EmployeeId\n"
                    + "ORDER BY ProductID DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6) + " " + rs.getString(7);
                String view = rs.getString(8);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getAllListProductPro: " + e.getMessage());
        }
        return data;
    }
    
    public ArrayList<Product> getAllListProductProById(String id) {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select p.ProductID, p.ProductName, p.ProductDescription, c.CategoryName, p.image, e.LastName, e.FirstName,p.Views\n"
                    + "from Products p\n"
                    + "join Categories c on c.CategoryID = p.CategoryID\n"
                    + "join Employees e on e.EmployeeID = p.EmployeeId\n"
                    + "where p.ProductID = '" + id + "'\n"
                    + "ORDER BY ProductID DESC";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6) + " " + rs.getString(7);
                String view = rs.getString(8);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getAllListProductProById: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getListProductById(String id) {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select * from Products\n"
                    + "where ProductID = '" + id + "'";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                String content = rs.getString(3);
                String catId = rs.getString(4);
                String image = rs.getString(5);
                String emId = rs.getString(6);
                String view = rs.getString(7);
                data.add(new Product(proId, name, content, catId, image, emId, view));
            }
        } catch (Exception e) {
            System.out.println("getListTimeTable: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Product> getAllListCategory() {
        ArrayList<Product> data = new ArrayList<Product>();
        try {
            String strSelect = "select *\n"
                    + "from categories";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String proId = rs.getString(1);
                String name = rs.getString(2);
                data.add(new Product(proId, name));
            }
        } catch (Exception e) {
            System.out.println("getAllListCategory: " + e.getMessage());
        }
        return data;
    }
}
