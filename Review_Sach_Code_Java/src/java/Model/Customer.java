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
import java.util.Date;

/**
 *
 * @author Admin
 */
public class Customer {

    private String CusId, LastName, FirstName, Phone, BirthDate, Address, Status;

    public Customer(String CusId, String LastName, String FirstName, String Phone, String BirthDate, String Address, String Status) {
        this.CusId = CusId;
        this.LastName = LastName;
        this.FirstName = FirstName;
        this.Phone = Phone;
        this.BirthDate = BirthDate;
        this.Address = Address;
        this.Status = Status;
        connect();
    }

    public Customer() {
        connect();
    }

    public String getCusId() {
        return CusId;
    }

    public void setCusId(String CusId) {
        this.CusId = CusId;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(String BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Customer{" + "CusId=" + CusId + ", LastName=" + LastName + ", FirstName=" + FirstName + ", Phone=" + Phone + ", BirthDate=" + BirthDate + ", Address=" + Address + ", Status=" + Status + '}';
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

    public ArrayList<Customer> getListCustomer() {
        ArrayList<Customer> data = new ArrayList<Customer>();
        try {
            String strSelect = "select *\n"
                    + "from Customers";
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String CusId = rs.getString(1);
                String LastName = rs.getString(2);
                String FirstName = rs.getString(3);
                String Phone = rs.getString(4);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                String BirthDate = "";
                if (rs.getDate(5) != null) {
                    BirthDate = f.format(rs.getDate(5));
                }
                String Address = rs.getString(6);
                String Status = rs.getString(7);
                if (Status.equals("1")) {
                    Status = "True";
                } else {
                    Status = "False";
                }
                data.add(new Customer(CusId, LastName, FirstName, Phone, BirthDate, Address, Status));
            }
        } catch (Exception e) {
            System.out.println("getListCustomer: " + e.getMessage());
        }
        return data;
    }

    public void changeStatus(String id, String status) {
        String st = "1";
        try {
            String strUpdate = "Update Customers\n"
                    + "SET Status = ?\n"
                    + "where CustomerID = ?";
            pstm = cnn.prepareStatement(strUpdate);
            if(status.equals("True")){
                st = "0";
            }
            pstm.setString(1, st);
            pstm.setString(2, id);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("changeStatus: " + e.getMessage());
        }
    }
}
