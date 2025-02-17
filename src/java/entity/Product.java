/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-09      1.0                 ThaiNV           Add Field
 */
package entity;

/**
 *
 * @author ThaiNV
 */
public class Product {
    private int id;
    private int brandId;
    private int vehicleTypeId;
    private String name;
    private String madeIn;
    private String manufactureYear;
    private String descript;
    private String img;
    private int quatity;
    private float price;
    private float discount;
    private int sellerId;

    public Product() {
    }

    public Product(int id, int brandId, int vehicleTypeId, String name, String madeIn, String manufactureYear, String descript, String img, int quatity, float price, float discount, int sellerId) {
        this.id = id;
        this.name = name;
        this.brandId = brandId;
        this.vehicleTypeId = vehicleTypeId;
        this.madeIn = madeIn;
        this.manufactureYear = manufactureYear;
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

    public int getVehicleTypeId() {
        return vehicleTypeId;
    }

    public void setVehicleTypeId(int vehicleTypeId) {
        this.vehicleTypeId = vehicleTypeId;
    }

    public String getMadeIn() {
        return madeIn;
    }

    public void setMadeIn(String madeIn) {
        this.madeIn = madeIn;
    }

    public String getManufactureYear() {
        return manufactureYear;
    }

    public void setManufactureYear(String ManufactureYear) {
        this.manufactureYear = ManufactureYear;
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
        return "Product{" + "id=" + id + ", name=" + name + ", brandId=" + brandId + ", vehicleTypeId=" + vehicleTypeId + ", madeIn=" + madeIn + ", ManufactureYear=" + manufactureYear + ", descript=" + descript + ", img=" + img + ", quatity=" + quatity + ", price=" + price + ", discount=" + discount + ", sellerId=" + sellerId + '}';
    }

    
    
}
