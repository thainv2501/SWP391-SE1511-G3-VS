/*
 * Copyright(C) 2005, G3-VS.
 * Vehicle Store
 *  
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2018-09-10      1.0                 MinhLH           First Implement
 */
package dao;

import context.DBContext;
import dao.impl.IRoleDAO;
import entity.Role;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nqt26
 */
public class RoleDAO extends DBContext implements IRoleDAO{

    @Override
    public List<Role> getAllRole() {
        List<Role> listRole =  new ArrayList<>();
        Connection con = null; // Khởi tạo connection
        PreparedStatement ps = null; // Khởi tạo PrepareStatement
        ResultSet rs = null; // Khởi tạo ResultSet
        try{
            try{
                con = getConnection();                
            } catch(Exception e){
                System.err.println("Co loi xay ra" + e);
            }
            String sql = "Select * from Role where roleName not like 'admin' ";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Role role = new Role(rs.getInt("roleId"), rs.getString("roleName"));
                listRole.add(role);
            }
        } catch (SQLException se){
            Logger.getLogger(RoleDAO.class.getName()).log(Level.SEVERE, null, se);
        } finally {
            try {
                con.close();
                ps.close();
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(RoleDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return listRole;
    }
    
}
