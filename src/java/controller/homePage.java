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

import dao.BrandDao;
import dao.ProductDao;
import dao.VehicleTypeDao;
import entity.Product;
import entity.VehicleType;
import dao.impl.IProductDao;
import entity.Brand;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *HomePage
 * take all car and moto from database
 * @author ThaiNV 
 */
public class homePage extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet homePage</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet homePage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //request.getRequestDispatcher("home/homePage.jsp").forward(request, response);
        HttpSession ses = request.getSession();
        IProductDao productDao = new ProductDao();
        VehicleTypeDao vehicleTypeDao = new VehicleTypeDao();
        BrandDao brandDao = new BrandDao();
        Vector<Product> allCar = (Vector) productDao.getAllProductsByVehicleTypeId(1);
        Vector<Product> allMoto = (Vector) productDao.getAllProductsByVehicleTypeId(2);

        Vector<VehicleType> allVehicleType = (Vector) vehicleTypeDao.getAllVehicleType();
        Vector<Brand> allBrand = brandDao.getAllBrand();
        ses.setAttribute("allBrand", allBrand);
        ses.setAttribute("allVehicleType", allVehicleType);
        ses.setAttribute("allCar", allCar);
        ses.setAttribute("allMoto", allMoto);

        request.getRequestDispatcher("view/homePage.jsp").forward(request, response);
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
