
import Model.Account;
import Model.Category;
import Model.Comment;
import Model.Customer;
import Model.Product;
import java.util.ArrayList;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Admin
 */
public class Test {

    public static void main(String[] args) {
        Category c = new Category();
        Product p = new Product();
        Comment co = new Comment();
        Account a = new Account();
        String id = "42";
//        ArrayList<Comment> books = co.getListComment();
//        for (Comment o : books) {
//            System.out.println(o);
//        }
        co.deleteComment(id);
        

//        Account u = new Account();
//String email = "Keto1412002@gmail.com";
//int role = u.getRoleByEmailDemo(email);
//System.out.println(role);

    }
}
