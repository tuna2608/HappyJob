/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package admin;

import dao.AdminDAO;
import entity.Account;
import entity.Messagess;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 *
 * @author DELL
 */
public class MessageDetail extends HttpServlet {
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
        String receiveString = request.getParameter("receiver");
        if (receiveString == null) {
            receiveString = "0";
        }
        int receiveId = Integer.parseInt(receiveString);
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        AdminDAO dao = new AdminDAO();
        Account receiver = dao.getAccountById(receiveId);
        List<Messagess> listMessSend = dao.getMessBySendReceiver(account.getAccountID(), receiveId);
        List<Messagess> listMessReceive = dao.getMessBySendReceiver(receiveId,account.getAccountID());

        Gson gson = new Gson();
        JsonObject jsonObject = new JsonObject();

        // Chuyển đổi Account thành JsonObject
        JsonObject receiverJson = convertAccountToJson(receiver);

        // Thêm receiverJson vào jsonObject
        jsonObject.add("receiver", receiverJson);

        JsonArray listMessSendJsonArray = new JsonArray();
        for (Messagess mess : listMessSend) {
            listMessSendJsonArray.add(convertMessToJson(mess));
        }
        jsonObject.add("listMessSend", listMessSendJsonArray);

        JsonArray listMessReceiveJsonArray = new JsonArray();
        for (Messagess mess : listMessReceive) {
            listMessReceiveJsonArray.add(convertMessToJson(mess));
        }
        jsonObject.add("listMessReceive", listMessReceiveJsonArray);

        String json = gson.toJson(jsonObject);

        // Gửi JSON về client
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
    }

    private JsonObject convertMessToJson(Messagess mess) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("id", mess.getMessageID());
        jsonObject.addProperty("senderid", mess.getSenderID());
        jsonObject.addProperty("receiverid", mess.getReceiverID());
        jsonObject.addProperty("timestamp", mess.getTimestamp());
        jsonObject.addProperty("content", mess.getContent());

        // Thêm các trường khác của đối tượng Messagess vào đây
        return jsonObject;
    }
    
    private JsonObject convertAccountToJson(Account account) {
    JsonObject jsonObject = new JsonObject();
    jsonObject.addProperty("accountID", account.getAccountID());
    jsonObject.addProperty("name", account.getName());
    jsonObject.addProperty("img", account.getImg());

    return jsonObject;
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
