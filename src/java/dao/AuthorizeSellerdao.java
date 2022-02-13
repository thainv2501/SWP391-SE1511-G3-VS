/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Role;
import entity.Seller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.impl.IAuthorizeSellerdao;

/**
 * Hiển thị danh sách tài khoản người bán chưa được chấp thuận
 * @author nqt26
 */
public class AuthorizeSellerdao extends DBContext implements IAuthorizeSellerdao{
    // lấy danh sách người bán chưa được cấp quyền
    @Override
    public List<Seller> getInactiveSellerAccount() {
        List<Seller> listSeller = new ArrayList<>();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        try {
              String sql = "SELECT * FROM dbo.ACCOUNT INNER JOIN dbo.Seller ON Seller.Username = ACCOUNT.Username \n" +
"INNER JOIN dbo.Role ON Role.RoleId = ACCOUNT.Role WHERE Status = 'inactive'";
              con = connection;
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Seller seller = new Seller(rs.getInt("Sellerid"), 
                        rs.getString("SellerName"),rs.getString("description"),rs.getString("address"), 
                        rs.getString("gmail"), rs.getString("phone"), new Account(rs.getString("username")
                                , rs.getString("password"), rs.getString("status"), new Role(rs.getInt("roleId"), rs.getString("rolename"))));
                listSeller.add(seller);
            }         
        } catch (SQLException e){
            System.out.println("" +  e);
        } 
        return listSeller;
    }

    @Override
    public void denySellerAccount(String username) {
        Connection con;
        PreparedStatement ps1;
        PreparedStatement ps2;
        ResultSet rs;
        try {
            String sql1 = "DELETE FROM dbo.Seller WHERE Username = ?";
            String sql2 = "DELETE FROM dbo.ACCOUNT WHERE Username = ?";
            con = connection;
            ps1 = con.prepareStatement(sql1);
            ps1.setString(1, username);
            ps2 = con.prepareStatement(sql2);
            ps2.setString(2, username);
            ps1.executeUpdate();
            ps2.executeUpdate();
        } catch (SQLException e){
            System.out.println("" + e);
        }
    }
}
