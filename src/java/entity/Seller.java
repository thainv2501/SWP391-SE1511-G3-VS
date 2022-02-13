/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author nqt26
 */
public class Seller {
    private int sellerId;
    private String sellerName;
    private String description;
    private String address;
    private String gmail;
    private String phone;
    private Account username;

    public Seller(int sellerId, String sellerName, String description, String address, String gmail, String phone, Account username) {
        this.sellerId = sellerId;
        this.sellerName = sellerName;
        this.description = description;
        this.address = address;
        this.gmail = gmail;
        this.phone = phone;
        this.username = username;
    }

    public Seller() {
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Account getUsername() {
        return username;
    }

    public void setUsername(Account username) {
        this.username = username;
    }
    
}
