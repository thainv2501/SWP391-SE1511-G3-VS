/*
 * Copyright(C) 2005, G3-VS.
 * Vehicle Store
 *  
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2022-02-14      1.0                 QuanTBA          Add Method
 */
package dao;

import context.DBContext;
import dao.impl.IManageProductDao;
import entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Hiển thị tất cả các sản phẩm của người bán
 * @author QuanTBA
 */
public class ManageProductDao extends DBContext implements IManageProductDao {
    //Lấy danh sách các sản phẩm theo ID của người bán
    @Override
    public List<Product> getProductBySellerid(int sid){
        List<Product> list=new ArrayList<>();
        String sql="select * from VehicalShop\n" +
                   "where SellerId = ?" ;
        
        try{
            PreparedStatement st= connection.prepareStatement(sql);
            st.setInt(1,sid);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setId(rs.getInt("id"));
                p.setBrandId(rs.getInt("brandId"));
                p.setVehicleTypeId(rs.getInt("vehicleTypeId"));
                p.setName(rs.getString("name"));
                p.setMadeIn(rs.getString("madeIn"));
                p.setManufactureYear(rs.getString("manufactureYear"));
                p.setDescript(rs.getString("descript"));
                p.setImg(rs.getString("img"));
                p.setQuatity(rs.getInt("quatity"));
                p.setDiscount(rs.getFloat("discount"));
                p.setImg(rs.getString("img"));
                p.setSellerId(rs.getInt("sellerId"));
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
      }
}
