/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-13      1.0                 TungNQ           Add Method
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import dao.impl.IManageAccountDAO;
import java.util.ArrayList;
import java.util.List;

/**
 * tìm account theo vai trò và id, chuyển trạng thái tài khoản
 *
 * @author nqt26
 */
public class ManageAccountDAO extends DBContext implements IManageAccountDAO {

    // tìm kiếm tài khoản theo vai trò và id của người dùng
    @Override
    public List<Account> searchAccount(int roleId, int id) {
        List<Account> listAccount = new ArrayList<>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "";
        try {

            try {
                con = getConnection();
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            if (roleId == 2) {
                sql = "SELECT * FROM dbo.ACCOUNT \n"
                        + "INNER JOIN dbo.Buyer ON Buyer.Username = ACCOUNT.Username\n"
                        + "INNER JOIN dbo.Role ON Role.RoleId = ACCOUNT.Role \n"
                        + "WHERE RoleId= ? AND BuyerID = ?  ";
            }
            if (roleId == 3) {
                sql = "SELECT * FROM dbo.ACCOUNT \n"
                        + "INNER JOIN dbo.Seller ON Seller.Username = ACCOUNT.Username\n"
                        + "INNER JOIN dbo.Role ON Role.RoleId = ACCOUNT.Role \n"
                        + "WHERE RoleId= ? AND SellerID = ?  ";
            }

            ps = con.prepareStatement(sql);
            ps.setInt(1, roleId);
            ps.setInt(2, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account =  new Account(rs.getString("username"), rs.getString("password"), rs.getString("status"),
                        new Role(rs.getInt("roleId"), rs.getString("roleName")));
                listAccount.add(account);
            }
        } catch (SQLException e) {
            System.out.println("" + e);
        } finally {
            try {
                ps.close();
                con.close();
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(ManageAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return listAccount;
    }

    @Override
    public void activeAccount(String username) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            String sql = "UPDATE dbo.ACCOUNT SET Status = 'Active' WHERE Username = ?";
            try {
                con = getConnection();
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("" + e);
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ManageAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public void deactiveAccount(String username) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            String sql = "UPDATE dbo.ACCOUNT SET Status = 'Active' WHERE Username = ?";
            try {
                con = getConnection();
            } catch (Exception e) {
                System.out.println("Co loi khi ket noi " + e.getMessage());
            }
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("" + e);
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ManageAccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
