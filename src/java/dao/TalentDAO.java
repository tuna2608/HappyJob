/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Talent;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author tuna
 */
public class TalentDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Talent> listAllTalent() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT * FROM talent;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public Talent getTalentById(int talentID) {
        String sql = "SELECT * FROM talent where talentID = ?;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);

            ps.setInt(1, talentID);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                );

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> searchTalent(String value) {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT * FROM talent where title like ? ";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);

            ps.setNString(1, "%" + value + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listTalentRatingAscending() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Talent\n"
                + "ORDER BY Rating ASC;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listTalentRatingDecreasing() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM Talent\n"
                + "ORDER BY Rating DESC;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listTalentPriceAscending() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT T.*\n"
                + "FROM Talent T\n"
                + "INNER JOIN ServicePackage SP ON T.TalentID = SP.TalentID\n"
                + "WHERE SP.Type = 'basic'\n"
                + "ORDER BY SP.Price ASC;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listTalentPriceDecreasing() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT T.*\n"
                + "FROM Talent T\n"
                + "INNER JOIN ServicePackage SP ON T.TalentID = SP.TalentID\n"
                + "WHERE SP.Type = 'basic'\n"
                + "ORDER BY SP.Price DESC;";
        try {
            con = (Connection) new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                tList.add(new Talent(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getInt(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        TalentDAO td = new TalentDAO();
        ArrayList<Talent> tList = td.searchTalent("cáo");
        System.out.println(tList);
    }
}
