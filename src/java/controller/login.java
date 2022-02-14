/*
 * Copyright(C) 2005, G3-VS.
 * Vehicle Store
 *  
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2018-09-10      1.0                 MinhLH           First Implement
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import context.AccountDBContext;
import entity.Account;
/**
 * Lớp này có các phương thức thực hiện truy vấn dữ liệu từ bảng
 * Account. Trong các phương thức seclect của lớp, dữ liệu được chuẩn
 * hóa (loại bỏ dấu cách ở hai đầu) trước khi được gọi vào cơ sở dữ liệu
 * Các phương thức sẽ trả về một đối tượng của lớp java.lang.Exception khi có
 * bất cứ lỗi nào xảy ra trong quá trình truy vấn, cập nhật dữ liệu Bugs :
 *
 * @author levan
 */
/**
 *
 * @author levan
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String contextPath = request.getContextPath();
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        AccountDBContext adb = new AccountDBContext();
        Account ac = new Account();
        ac.setUsername(user);
        ac.setPassword(pass);
        if (adb.getAccount(ac) != null) {
            ac = adb.getAccount(ac);
            request.getSession().setAttribute("account", ac);
            response.sendRedirect(contextPath + "/home");
        } else {
            response.getWriter().print("Failed");
        }
    }

   
}
