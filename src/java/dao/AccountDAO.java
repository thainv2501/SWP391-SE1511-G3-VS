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
/**
 * Lớp này có các phương thức thực hiện truy vấn hoặc cập nhật dữ liệu từ bảng
 * Account. Trong các phương thức select or insert của lớp, dữ liệu được chuẩn
 * hóa (loại bỏ dấu cách ở hai đầu) trước khi được cập nhật vào cơ sở dữ liệu
 * Các phương thức sẽ trả về một đối tượng của lớp java.lang.Exception khi có
 * bất cứ lỗi nào xảy ra trong quá trình truy vấn, cập nhật dữ liệu Bugs :
 *
 * @author levan
 */
public class AccountDAO extends DBContext {

    /* get account from database ==> return a account coitain : string ussername, string password, string email, 
    *String status, int rolid,
     */
    public Account getAccount(Account a) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Account ac = null;
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
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            rs = ps.executeQuery();
            while (rs.next()) {
                ac = new Account();
                ac.setUsername(rs.getString(1));
                ac.setPassword(rs.getString(2));
            }
        } catch (Exception ex) {
            System.out.println("Error ");
            return null;
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
        }
        return ac;
    }

    /* insert account from database ==> return a string : "oke" or "not oke"
     */
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
            String sql = "INSERT INTO [dbo].[ACCOUNT]\n"
                    + "           ([Username]\n"
                    + "           ,[Password]\n"
                    + "           ,[Status]\n"
                    + "           ,[Role])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getStatus());
            ps.setInt(4, a.getRoleId().getRoleId());
            ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Error");
            return "not oke";
        } finally {
            try {
                ps.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return "oke";
    }

}
