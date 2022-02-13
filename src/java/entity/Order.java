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
public class Order {
    private int orderId;
    private Date dateCreated;
    private double totalPrice;
    private Seller sellerId;
    private Buyer buyerId;

    public Order(int orderId, Date dateCreated, double totalPrice, Seller sellerId, Buyer buyerId) {
        this.orderId = orderId;
        this.dateCreated = dateCreated;
        this.totalPrice = totalPrice;
        this.sellerId = sellerId;
        this.buyerId = buyerId;
    }

    public Order() {
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Seller getSellerId() {
        return sellerId;
    }

    public void setSellerId(Seller sellerId) {
        this.sellerId = sellerId;
    }

    public Buyer getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(Buyer buyerId) {
        this.buyerId = buyerId;
    }
    
}
