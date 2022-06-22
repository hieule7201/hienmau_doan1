/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import entity.NHM_TNV;
import entity.TNV_NHM;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Minh Hieu
 */
@WebServlet(name = "SupportEditServlet", urlPatterns = {"/supportedit"})
public class SupportEditServlet extends HttpServlet {

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
        String id = request.getParameter("sid");
        DAO dao = new DAO();
        TNV_NHM d = dao.selectTNVbyMA(id);
        request.setAttribute("sl", d);
        request.getRequestDispatcher("support_edit.jsp").forward(request, response);
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String maTNV = request.getParameter("maTNV");
        String tenTNV = request.getParameter("tenTNV");
        String gioiTinh = request.getParameter("gioiTinh");
        String diaChi = request.getParameter("diaChi");
        String sdt = request.getParameter("sdt");
        String cccd = request.getParameter("cccd");
        String matKhau = request.getParameter("matKhau");
        DAO dao = new DAO();
        NHM_TNV nhm = dao.selectNHM(sdt);
        String maNHM = nhm.getMaNHM();
        dao.updateNHM_2(maNHM, tenTNV, gioiTinh, diaChi, sdt, cccd, matKhau);
        
        
        dao.updateTNV(maTNV, tenTNV, gioiTinh, diaChi, sdt, cccd, matKhau);
        response.sendRedirect("./supportmanager");
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
