/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import entity.NHM_TNV;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Minh Hieu
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String identify = request.getParameter("identify");
        String password = request.getParameter("password");
        String conf_pass = request.getParameter("conf_pass");
        String phonePattern = "^0\\d{9}$";
        String identifyPattern = "\\d{13}$";
        DAO dao = new DAO();
        if(phone.matches(phonePattern) == false){
            request.setAttribute("phone_err", "Xem lại định dạng số điện thoại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        if(identify.matches(identifyPattern) == false){
            request.setAttribute("id_err", "Xem lại định dạng căn cước (đủ 13 số)");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        if(!password.equals(conf_pass)){
            request.setAttribute("all_err", "Mật khẩu không giống nhau");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
            
        NHM_TNV a = dao.selectNHM(phone);
        NHM_TNV b = dao.selectNHMbyID(identify);
        if(a != null || b != null){
            request.setAttribute("all_err", "số điện thoại hoặc căn cước đã được đăng ký");
            request.getRequestDispatcher("register.jsp").forward(request, response);   
        }else{
            dao.registerNHM("",username,"1","","","", phone, identify, password);
            dao.registerTNV("",username,"1","", phone, identify, password);
            dao.registerUser(phone, password,"1");
            response.sendRedirect("login.jsp");
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
        processRequest(request, response);
        
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
