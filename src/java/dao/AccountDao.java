/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import entity.Account;
import entity.Product;
import java.sql.Connection;
import java.util.Vector;

/**
 *
 * @author levan
 */
public class AccountDao extends DBContext {

    public Account getAccount(Account a) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Account ac = new Account();
        try {
            con = getConnection();

            try {
                System.out.println("Ket noi Thanh cong");
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            String sql = " select * from Account\n"
                    + "where [username] = ? and [password] = ?";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ac.setUsername(rs.getString(1));
                ac.setPassword(rs.getString(2));
                ac.setDisplayname(rs.getString(3));
            }
        } catch (Exception ex) {
            System.out.println("Error");
            return null;
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
        }
        return ac;
    }

    public String Insert(Account a) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = getConnection();

            try {
                System.out.println("Ket noi Thanh cong");
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            String sql = "INSERT INTO [dbo].[Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[email]\n"
                    + "           ,[displayname]\n"
                    + "           ,[status])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getEmail());
            ps.setString(4, a.getDisplayname());
            ps.setString(5, a.getStatus());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Error");
            return "not oke";
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(BrandDAO.class.getName()).log(Level.SEVERE, null, ex);
                return "not oke";
            }
        }
        return "oke";
    }

}
