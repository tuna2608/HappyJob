/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package hoang;

import dao.CategoryDAO;
import dao.TalentDAO;
import entity.Category;
import entity.Talent;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tuna
 */
@WebServlet(name = "ListTalentServlet", urlPatterns = {"/listTalentServlet"})
public class ListTalentServlet extends HttpServlet {

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
//        TalentDAO td = new TalentDAO();
//        ArrayList<Talent> lTalent = td.listAllTalent();
//        System.out.println(lTalent);
//        request.getSession().setAttribute("listTalent", lTalent);
//        request.getRequestDispatcher("Talent.jsp").forward(request, response);
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
//        processRequest(request, response);
        TalentDAO td = new TalentDAO();
        ArrayList<Talent> lTalent = td.listAllTalentActive();
        System.out.println(lTalent);
        
        CategoryDAO ct = new CategoryDAO();
        List<Category> clist = ct.getListAllCategories();
        
        request.getSession().setAttribute("listCategory", clist);
        request.getSession().setAttribute("listTalent", lTalent);
        request.getRequestDispatcher("Talent.jsp").forward(request, response);
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
//        processRequest(request, response);
        String keyParam = new String(request.getParameter("keySearch"));
        System.out.println(keyParam);

        TalentDAO td = new TalentDAO();
        ArrayList<Talent> tList = td.searchTalent(keyParam);

        
        request.getSession().setAttribute("listTalent", tList);
        response.sendRedirect("Talent.jsp");
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
