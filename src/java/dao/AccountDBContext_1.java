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

/**
 *
 * @author levan
 */
public class AccountDao extends DBContext {

    public Account getAccount(Account a) {
        try {
            String sql = " select * from Account\n"
                    + "where [username] = ? and [password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUsername());
            stm.setString(2, a.getPassword());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account ac = new Account();
                ac.setUsername(rs.getString("username"));
                ac.setPassword(rs.getString("password"));
                //ac.setStatus(rs.getString("status"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account getAccountId(int id) {
        try {
            String sql = " select * from Account\n"
                    + "where id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account ac = new Account();
                ac.setUsername(rs.getString("username"));
                ac.setPassword(rs.getString("password"));
                ac.setStatus(rs.getString("status"));
                return ac;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String Insert(Account a) {
        try {
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
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUsername());
            stm.setString(2, a.getPassword());
            stm.setString(3, a.getEmail());
            stm.setString(4, a.getDisplayname());
            stm.setString(5, a.getStatus());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
            return ("not oke");
        }
        return ("oke");
    }

    public void updateAvata(Account a) {
        try {
            String sql = "UPDATE [dbo].[Account]\n"
                    + "   SET [url_avarta] = ?\n"
                    + " WHERE username = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, a.getUrlavata());
            stm.setString(2, a.getUsername());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
