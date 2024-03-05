/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Category;
import entity.TalentCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class CategoryDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //a1
    public List<Category> getListAllCategories() {
        List<Category> listA = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection();//mo ket noi vs sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                listA.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return listA;

    }
    
    public Category getCategoryById(int categoryID) {
        String sql = "SELECT * FROM category where categoryID = ?;";
        try {
            conn = (Connection) new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setInt(1, categoryID);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Category(
                        rs.getInt(1),
                        rs.getString(2)
                );

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList<TalentCategory> getTalentByCategoryId(int categoryID) {
        ArrayList<TalentCategory> tcList = new ArrayList<TalentCategory>();
        String sql = "SELECT * FROM TalentCategory where categoryID = ?;";
        
        try {
            conn = (Connection) new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setInt(1, categoryID);
            rs = ps.executeQuery();

            while (rs.next()) {
                tcList.add(new TalentCategory(
                        rs.getInt(1),
                        rs.getInt(2)
                ) 
                );
            }
            return tcList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    

    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        List<TalentCategory> tdList = dao.getTalentByCategoryId(0);
        for (TalentCategory a : tdList) {
            System.out.println(a);
        }
        System.out.println("ok");
    }
}
