/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Category;
import entity.Product;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDouble(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
   public Product getProductByID(String id) {
           String query = "select * from Product\n"
                + "where Id_Product = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDouble(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void AddProduct(String name, String size, String category, String img, String color, String soluongcon, String price) {
        String query = "insert into Product(Name_Product,Size,Name_Category,Image,Color,SoLuongCon,Price) values('" + name + "','" + size + "','" + category + "','" + img + "','" + color + "','" + soluongcon + "'," + price + ")";
        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            System.out.println(ps);
            out.println("done");
        } catch (Exception e) {
            out.println("error");
        }
    }

    public void EditProduct(String id, String name, String size, String category, String img, String color, String soluongcon, String price) {
        String query = "update Product set Name_Product ='" + name + "',Size ='" + size + "',Name_Category='" + category + "', Image = '" + img + "', Color = '" + color + "',SoLuongCon = '" + soluongcon + "',Price='" + price + "' where Id_Product = "+id;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            out.println("done");
        } catch (Exception e) {
            out.println("error");
        }
    }

    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getDouble(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //////////////////////////

    public void DeleteProduct(String Id_Product) {
        String query = "delete from Product where Id_Product =" + Id_Product;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            out.println("Delete Done");
        } catch (Exception e) {
            out.println("Error Delete");
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();

    }

}
