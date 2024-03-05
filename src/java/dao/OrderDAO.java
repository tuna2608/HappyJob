/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author tuna
 */
public class OrderDAO {
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Order> listAllOrder() {
        ArrayList<Order> oList = new ArrayList<>();
        String sql = "SELECT * FROM orders;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                oList.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getDate(4),
                        rs.getString(5)
                ));

            }
            return oList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList<Order> listOrderById(int id) {
        ArrayList<Order> oList = new ArrayList<>();
        String sql = "SELECT * FROM orders where accountID = ?;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                oList.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getDate(4),
                        rs.getString(5)
                ));

            }
            return oList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    
    public static void main(String[] args) {
        OrderDAO od = new OrderDAO();
        ArrayList<Order> oList = od.listAllOrder();
        for(Order o :oList){
            System.out.println(o);
        }
    }
}
