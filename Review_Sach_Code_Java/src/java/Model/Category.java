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
public class Category {

    private String cateId, name;

    public Category(String cateId, String name) {
        this.cateId = cateId;
        this.name = name;
        connect();
    }

    public Category() {
        connect();
    }

    public String getCateId() {
        return cateId;
    }

    public void setCateId(String cateId) {
        this.cateId = cateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" + "cateId=" + cateId + ", name=" + name + '}';
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

    public ArrayList<Category> getListCategory() {
        ArrayList<Category> data = new ArrayList<Category>();
        try {
            String strSelect = "select *\n"
                    + "from Categories";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String cateId = rs.getString(1);
                String name = rs.getString(2);

                data.add(new Category(cateId, name));
            }
        } catch (Exception e) {
            System.out.println("getListCategory: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<Category> getListCategoryByID(String id) {
        ArrayList<Category> data = new ArrayList<>();
        try {
            String strSelect = "SELECT * FROM Categories WHERE CategoryID = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                String cateId = rs.getString("CategoryID");
                String name = rs.getString("CategoryName");
                data.add(new Category(cateId, name));
            }
        } catch (Exception e) {
            System.out.println("getListCategoryByID: " + e.getMessage());
        }
        return data;
    }

    public void addCategory(String name) {
        try {
            // Chuyển đổi chữ cái đầu tiên thành chữ hoa nếu nó là chữ thường
            if (Character.isLowerCase(name.charAt(0))) {
                name = Character.toUpperCase(name.charAt(0)) + name.substring(1);
            }

            String strUpdate = "insert into Categories(CategoryName) values(?)";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, name);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("addCategory:" + e.getMessage());
        }
    }

    public void deleteCategory(String id) {
        try {
            String strUpdate = "delete from Categories "
                    + "where CategoryID=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setInt(1, Integer.parseInt(id));
            pstm.execute();
        } catch (Exception e) {
            System.out.println("deleteCategory:" + e.getMessage());
        }
    }

    public void updateCategory(String name, String id) {
        try {
            String strUpdate = "update Categories\n"
                    + "set CategoryName = ?\n"
                    + "where CategoryID = ?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, name);
            pstm.setInt(2, Integer.parseInt(id));
            pstm.execute();
        } catch (Exception e) {
            System.out.println("updateCategory:" + e.getMessage());
        }
    }
}
