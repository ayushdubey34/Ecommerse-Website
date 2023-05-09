
package com.mycompany.mycart1.servelet;

import com.mycompany.mycart1.entites.User;
import com.mycompany.mycart1.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Ayush
 */
public class RegisterServelet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                String user_name = request.getParameter("user_name");
                String user_email = request.getParameter("user_email");
                String user_password = request.getParameter("user_password");
                String user_phone = request.getParameter("user_phone");
                String user_address = request.getParameter("user_address");
                
                if(user_name.isEmpty()){
                    out.println("Name is empty");
                    return;
                }
                
//                user object
                  User user  = new User(user_name, user_email, user_password,user_phone,"default.jpg", user_address,"Normal");
                  Session hibernateSession  = FactoryProvider.getFactory().openSession();
                  Transaction tx = hibernateSession.beginTransaction();
                  
                  int id = (int)hibernateSession.save(user);
                  
                  tx.commit();
                  hibernateSession.close();
                 
                  HttpSession httpSession = request.getSession();
                  httpSession.setAttribute("message", "Registration is Sucessfull !! id is: "+id);
                  response.sendRedirect("register.jsp");
                  return;
                
            } catch (Exception e) {
                e.printStackTrace();
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("error_message", "Unable to Register - "+ e.getMessage());
                response.sendRedirect("register.jsp");

            }
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
