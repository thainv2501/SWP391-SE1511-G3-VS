/*
 * Copyright(C) 2005, G3-VS.
 * Vehicle Store
 *  
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2022-02-15      1.0                 QuanTBA          Add Method
 */
package dao;

import context.DBContext;
import dao.impl.IManageProductDao;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Hiển thị tất cả các sản phẩm của người bán
 * @author QuanTBA
 */
public class ManageProductDAO extends DBContext implements IManageProductDao {
     Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
    //Lấy danh sách các sản phẩm theo ID của người bán
    @Override
    public List<Product> getProductBySellerid(int sid){
        List<Product> list=new ArrayList<>();
        String sql="select * from Product\n" +
                   "where SellerId = ?" ;
        
        try{
            con = getConnection();
            ps= con.prepareStatement(sql);
            ps.setInt(1,sid);
            rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setId(rs.getInt("ProductId"));
                p.setBrandId(rs.getInt("BrandId"));
                p.setVehicleTypeId(rs.getInt("vehicleTypeId"));
                p.setName(rs.getString("ProductName"));
                p.setMadeIn(rs.getString("MadeIn"));
                p.setManufactureYear(rs.getString("ManufactureYear"));
                p.setDescript(rs.getString("Description"));
                p.setImg(rs.getString("Image"));
                p.setQuatity(rs.getInt("Quantity"));
                p.setPrice(rs.getFloat("UnitPrice"));
                p.setDiscount(rs.getFloat("Discount"));               
                p.setSellerId(rs.getInt("SellerId"));
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        } finally{
            try {
                ps.close();
                rs.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        return list;
      }
    }
    
    // Tìm kiếm sản phẩm theo tên
     @Override
    public List<Product> SearchProductByNameForSeller(int sid,String name){
        List<Product> list=new ArrayList<>();
        String sql="select * from Product\n" +
                   "where SellerId = ? " +
                   "and ProductName like ?";
        
        try{
            con = getConnection();
            ps= con.prepareStatement(sql);
            ps.setInt(1,sid);
            ps.setString(2, "%"+ name +"%");
            rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setId(rs.getInt("ProductId"));
                p.setBrandId(rs.getInt("BrandId"));
                p.setVehicleTypeId(rs.getInt("vehicleTypeId"));
                p.setName(rs.getString("ProductName"));
                p.setMadeIn(rs.getString("MadeIn"));
                p.setManufactureYear(rs.getString("ManufactureYear"));
                p.setDescript(rs.getString("Description"));
                p.setImg(rs.getString("Image"));
                p.setQuatity(rs.getInt("Quantity"));
                p.setPrice(rs.getFloat("UnitPrice"));
                p.setDiscount(rs.getFloat("Discount"));               
                p.setSellerId(rs.getInt("SellerId"));
                list.add(p);
            }
        }catch(SQLException e){
            System.out.println(e);
        } finally{
            try {
                con.close();
                ps.close();
                rs.close();
                
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        return list;
      }
    }
    
    
    //Thêm sản phẩm mới vào trong danh sách
    @Override
    public void AddProduct(int vehicleTypeid,String name,int brandid,
                             String madein,String manufactureYear,String descript,
                              String img,int quatity,float price,float discount,
                               int sid){
       
         String sql="insert Product\n" +
"(vehicleTypeId,ProductName,BranId,MadeIn,ManufactureYear,Description,Image,Quantity,UnitPrice,Discount,SellerId) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

         try{
              con = getConnection();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();   
            ps.setInt(1,vehicleTypeid);
            ps.setString(2,name);
            ps.setInt(3,brandid);
            ps.setString(4,madein);
            ps.setString(5,manufactureYear);
            ps.setString(6,descript);
            ps.setString(7,img);
            ps.setInt(8,quatity);
            ps.setFloat(9,price);
            ps.setFloat(10,discount);
            ps.setInt(11,sid);
           
            ps.executeUpdate();
         }catch(Exception e){
             System.out.println(e);  
         }
         finally{
            try {
                ps.close();
                rs.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
      }
     }
    //Xoá sản phẩm theo id sản phẩm
    @Override
     public void deleteProduct(String pid) {
        
         String sql="delete from Product\n" +
                    "where ProductId = ?";
         try{
             con = getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1,pid);
            ps.executeUpdate();
         }catch(Exception e){
             System.out.println(e);
         }finally{
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
      }
    }
     
//Hiển thị thông tin sản phẩm dựa trên id sản phẩm
    @Override
    public Product getProductByID(int pid) {   
          String sql="select * from Product\n" 
        +"where ProductId= ?";
        try{
            con = getConnection();
            ps=con.prepareStatement(sql);
            ps.setInt(1,pid);
            rs=ps.executeQuery();
            while(rs.next()){
                Product p=new Product();
                p.setId(rs.getInt("ProductId"));
                p.setBrandId(rs.getInt("BrandId"));
                p.setVehicleTypeId(rs.getInt("vehicleTypeId"));
                p.setName(rs.getString("ProductName"));
                p.setMadeIn(rs.getString("MadeIn"));
                p.setManufactureYear(rs.getString("ManufactureYear"));
                p.setDescript(rs.getString("Description"));
                p.setImg(rs.getString("Image"));
                p.setQuatity(rs.getInt("Quantity"));
                p.setPrice(rs.getFloat("UnitPrice"));
                p.setDiscount(rs.getFloat("Discount"));
                return p;
            }
        }catch(SQLException e){
            System.out.println(e);
        } catch (Exception ex) {
             Logger.getLogger(ManageProductDAO.class.getName()).log(Level.SEVERE, null, ex);
         } finally{
            try {
                ps.close();
                con.close();
            } catch (Exception ex) {
            Logger.getLogger(ManageProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      }
        
        return null;
    }
   
//Chỉnh sửa thông tin sản phẩm dựa trên id sản phẩm đó
    @Override
    public void EditProduct(String Branid, String vehicleTypeId, String name, String MadeIn, String manufactureYear, String description, String image, String quantity, String price, String discount, int id) {
         String sql= "update Product\n" +
"set  BrandId = ?,\n" +
"     vehicleTypeId = ?,\n" +
"     ProductName = ?,\n" +
"     MadeIn = ?,\n" +
"     ManufactureYear = ?,\n" +
"     Description = ?,\n" +
"     Image = ?,\n" +
"     Quantity = ?,\n" +
"     UnitPrice = ?,\n" +
"     Discount = ? \n" +
"	where ProductId = ?";
         try{
            ps=con.prepareStatement(sql);
            ps.setString(1,Branid);
            ps.setString(2,vehicleTypeId);
            ps.setString(3,name);
            ps.setString(4,MadeIn);
            ps.setString(5,manufactureYear);
            ps.setString(6,description);
            ps.setString(7,image);
            ps.setString(8,quantity);
            ps.setString(9,price);
            ps.setString(10,discount);
            ps.setInt(11,id);
            ps.executeUpdate();
         }catch(Exception e){
             System.out.println(e);  
         }
        finally{
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
      }
    }
    
     public static void main(String[] args) {
         ManageProductDAO bd = new ManageProductDAO();
       List <Product> list = bd.SearchProductByNameForSeller(2,"Ghibli");
       
            System.out.println(list.get(0).getName());
    }

   
}
