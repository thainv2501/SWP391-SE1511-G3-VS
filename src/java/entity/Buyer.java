/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author nqt26
 */
public class Buyer {
    private int buyerId;
    private String buyerName;
    private String address;
    private String gmail;
    private String phone;
    private Date birthday;
    private Account username;

    public Buyer(int buyerId, String buyerName, String address, String gmail, String phone, Date birthday, Account username) {
        this.buyerId = buyerId;
        this.buyerName = buyerName;
        this.address = address;
        this.gmail = gmail;
        this.phone = phone;
        this.birthday = birthday;
        this.username = username;
    }

    public Buyer() {
    }

    public int getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(int buyerId) {
        this.buyerId = buyerId;
    }

    public String getBuyerName() {
        return buyerName;
    }

    public void setBuyerName(String buyerName) {
        this.buyerName = buyerName;
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

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Account getUsername() {
        return username;
    }

    public void setUsername(Account username) {
        this.username = username;
    }

}
