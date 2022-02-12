/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Product;
import dao.impl.IProductDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

/**
 *
 * @author taola
 * @version 
 * load product data from database
 */
public class ProductDao extends DBContext implements IProductDao{
    //get all product from database
    @Override
    public Vector<Product> getAllProducts() {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Vector vec = new Vector();
        try {

            con = connection;
            try {
                System.out.println("Ket noi Thanh cong");
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            String sql = "SELECT * from Product"
                    + " order by ManufactureYear desc ";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                vec.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10),
                        rs.getFloat(11),
                        rs.getInt(12)
                )
                );
            }
        } catch (Exception ex) {
            System.out.println("Error");
        }
        return vec;
    }
    
    @Override
    public Vector<Product> getAllProductsByVehicleTypeId(int vtid) {
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        Vector vec = new Vector();
        try {

            con = connection;
            try {
                System.out.println("Ket noi Thanh cong");
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            String sql = "SELECT * from Product"
                    + " where vehicleTypeId = ? "
                    + "order by ManufactureYear desc";
            ps = con.prepareStatement(sql);
            ps.setInt(1, vtid);
            rs = ps.executeQuery();
            while (rs.next()) {
                vec.add(new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10),
                        rs.getFloat(11),
                        rs.getInt(12)
                )
                );
            }
        } catch (Exception ex) {
            System.out.println("Error");
        }
        return vec;
    }
    
    
}
