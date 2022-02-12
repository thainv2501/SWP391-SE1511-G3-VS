/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import dao.impl.IBrandDao;
import entity.Brand;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

/**
 *
 * @author taola
 */
public class BrandDao extends DBContext implements IBrandDao {

    public Vector<Brand> getAllBrand() {
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
            String sql = "SELECT *\n"
                    + "  FROM [VehicalShop].[dbo].[Brand]";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                vec.add(new Brand(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)
                )
                );
            }
        } catch (Exception ex) {
            System.out.println("Error");
        }
        return vec;
    }
    
    public static void main(String[] args) {
        BrandDao dao = new BrandDao();
        Vector<Brand> vec = dao.getAllBrand();
        for (Brand brand : vec) {
            System.out.println(brand);
        }
    }
}
