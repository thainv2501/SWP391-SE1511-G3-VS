/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-09      1.0                 ThaiNV           Add Field
 */
package dao;

import context.DBContext;
import entity.VehicleType;
import dao.impl.IVehicleTypeDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

/**
 * Lớp này có các phương thức thực hiện truy vấn hoặc cập nhật dữ liệu từ bảng
 * VehicleTpye. Trong các phương thức update or insert của lớp, dữ liệu được chuẩn hóa (loại bỏ dấu cách ở hai đầu) trước khi được cập nhật vào cơ sở dữ liệu
 * Các phương thức sẽ trả về một đối tượng của lớp java.lang.Exception khi có bất cứ lỗi nào xảy ra trong quá trình truy vấn, cập nhật dữ liệu
 * Bugs : 
 *
 * @author Nguyen Viet Thai
 */


/**
 * The class contains method find, update, delete, insert VehicleType information from
 * VehicleType table in database. In the update or insert method, all data will be normalized (trim space) before update/insert into database
 * The method wil throw an object  of java.lang.Exception class if there is any error occurring when finding, inserting, or updating data
 * <p>Bugs: 
 *
 * @author Nguyen Viet Thai
 */
public class VehicleTypeDao extends DBContext implements IVehicleTypeDao{
    /*
    take all vehicleType from dâtbase ==>  will return a list of VehicleType contain : vehicleTypeID, cehicleTypeName
    */
    @Override
    public Vector<VehicleType> getAllVehicleType() {
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
            String sql = "select * from vehicleType";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                vec.add(new VehicleType(rs.getInt(1),
                        rs.getString(2)
                )
                );
            }
        } catch (Exception ex) {
            System.out.println("Error");
        }
        return vec;
    }
    
    public static void main(String[] args) {
        VehicleTypeDao dao = new VehicleTypeDao();
        Vector<VehicleType> vec = dao.getAllVehicleType();
        for (VehicleType vehicleType : vec) {
            System.out.println(vehicleType);
        }
    }
}
