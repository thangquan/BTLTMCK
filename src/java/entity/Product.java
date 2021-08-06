/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author trinh
 */
public class Product {

    private int id;
    private String name;
    private String size;
    private String category;
    private String image;
    private String color;
    private int soluongcon;
    private double price;

    public Product() {
    }

    public Product(int id, String name, String size, String category, String image, String color, int soluongcon, double price) {
        this.id = id;
        this.name = name;
        this.size = size;
        this.category = category;
        this.image = image;
        this.color = color;
        this.soluongcon = soluongcon;
        this.price = price;
    }

    public int getId_Product() {
        return id;
    }

    public void setId_Product(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getSoluongcon() {
        return soluongcon;
    }

    public void setSoluongcon(int soluongcon) {
        this.soluongcon = soluongcon;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

}
