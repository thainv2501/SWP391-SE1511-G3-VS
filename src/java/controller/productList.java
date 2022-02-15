/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-09      1.0                 ThaiNV           Add Field
 */
package controller;

import dao.ProductDAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Lớp này có các phương thức thực hiện truy vấn hoặc cập nhật dữ liệu từ bảng
 * Product.
 * Đông thời hiện thị các danh mục và các hãng xe cho chức năng search
 * @Brand : brandName ,BrandId
 * 
 *
 * @author Nguyen Viet Thai
 */
/**
 * The class contains method find, update, delete, insert Product information
 * from Product table in database. 
 * 
 * <p>
 * Bugs:
 *
 * @author Nguyen Viet Thai
 */
public class productList extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
        }
    }

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
        //processRequest(request, response);
        int vtid = Integer.parseInt(request.getParameter("vtid"));
        String vtName = request.getParameter("vtname");
        HttpSession ses = request.getSession();
        ses.removeAttribute("keyWord");

        if (vtid == 1) {
            Vector<Product> allCar = (Vector<Product>) ses.getAttribute("allCar");
            ses.setAttribute("availableProduct", allCar);
        }
        if (vtid == 2) {
            Vector<Product> allMoto = (Vector<Product>) ses.getAttribute("allMoto");
            ses.setAttribute("availableProduct", allMoto);
        }
        ses.setAttribute("selectedBrand", 0);
        ses.setAttribute("sortOp", "ManufactureYear desc");
        ses.setAttribute("vtid", vtid);
        ses.setAttribute("vtName", vtName);
        request.getRequestDispatcher("view/productList.jsp").forward(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
