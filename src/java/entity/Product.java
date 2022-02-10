/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author taola
 */
public class Product {
    private int id;
    private String name;
    private int brandId;
    private String madeIn;
    private String ManufactureYear;
    private String descript;
    private String img;
    private int quatity;
    private float price;
    private float discount;
    private int sellerId;

    public Product() {
    }

    public Product(int id, String name, int brandId, String madeIn, String ManufactureYear, String descript, String img, int quatity, float price, float discount, int sellerId) {
        this.id = id;
        this.name = name;
        this.brandId = brandId;
        this.madeIn = madeIn;
        this.ManufactureYear = ManufactureYear;
        this.descript = descript;
        this.img = img;
        this.quatity = quatity;
        this.price = price;
        this.discount = discount;
        this.sellerId = sellerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getMadeIn() {
        return madeIn;
    }

    public void setMadeIn(String madeIn) {
        this.madeIn = madeIn;
    }

    public String getManufactureYear() {
        return ManufactureYear;
    }

    public void setManufactureYear(String ManufactureYear) {
        this.ManufactureYear = ManufactureYear;
    }

    public String getDescript() {
        return descript;
    }

    public void setDescript(String descript) {
        this.descript = descript;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getQuatity() {
        return quatity;
    }

    public void setQuatity(int quatity) {
        this.quatity = quatity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public int getSellerId() {
        return sellerId;
    }

    public void setSellerId(int sellerId) {
        this.sellerId = sellerId;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", brandId=" + brandId + ", madeIn=" + madeIn + ", ManufactureYear=" + ManufactureYear + ", descript=" + descript + ", img=" + img + ", quatity=" + quatity + ", price=" + price + ", discount=" + discount + ", sellerId=" + sellerId + '}';
    }
    
    
    
}
