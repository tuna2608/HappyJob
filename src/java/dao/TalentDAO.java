/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Talent;
import entity.TalentCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

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
                        rs.getDouble(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listAllTalentActive() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT * FROM Talent WHERE [Status] = 'active';";
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
                        rs.getDouble(10)
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
                        rs.getDouble(10)
                );

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> searchTalent(String value) {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT * FROM talent where [Status] = 'active' and title like ? ";
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
                        rs.getDouble(10)
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
                + "where [Status] = 'active'"
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
                        rs.getDouble(10)
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
                + "where [Status] = 'active'"
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
                        rs.getDouble(10)
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
                + "and T.[Status] = 'active'"
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
                        rs.getDouble(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> listTalentPrice1000() {
        ArrayList<Talent> tList = new ArrayList<>();
        String sql = "SELECT T.*\n"
                + "FROM Talent T\n"
                + "INNER JOIN ServicePackage SP ON T.TalentID = SP.TalentID\n"
                + "WHERE SP.Type = 'basic'\n"
                + "and T.[Status] = 'active'"
                + "and SP.Price < 1000";
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
                        rs.getDouble(10)
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
                + "and T.[Status] = 'active'"
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
                        rs.getDouble(10)
                ));

            }
            return tList;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Talent> filterRatingDecreasing(ArrayList<Talent> talents) {
        Collections.sort(talents, new Comparator<Talent>() {
            @Override
            public int compare(Talent t1, Talent t2) {
                return Double.compare(t2.getRating(), t1.getRating());
            }
        });
        return talents;
    }

    public ArrayList<Talent> filterRatingAscending(ArrayList<Talent> talents) {
        Collections.sort(talents, new Comparator<Talent>() {
            @Override
            public int compare(Talent t1, Talent t2) {
                return -Double.compare(t2.getRating(), t1.getRating());
            }
        });
        return talents;
    }

    public ArrayList<Talent> filterPriceAscending(ArrayList<Talent> talents) {
        ServicePackageDAO sd = new ServicePackageDAO();

        Collections.sort(talents, new Comparator<Talent>() {
            @Override
            public int compare(Talent t1, Talent t2) {
                return -Integer.compare(
                        sd.getPackageByIdBasic(t2.getTalentID()).getPrice(),
                        sd.getPackageByIdBasic(t1.getTalentID()).getPrice()
                );
            }
        });
        return talents;
    }

    public ArrayList<Talent> filterPriceDecreasing(ArrayList<Talent> talents) {
        ServicePackageDAO sd = new ServicePackageDAO();

        Collections.sort(talents, new Comparator<Talent>() {
            @Override
            public int compare(Talent t1, Talent t2) {
                return Integer.compare(
                        sd.getPackageByIdBasic(t2.getTalentID()).getPrice(),
                        sd.getPackageByIdBasic(t1.getTalentID()).getPrice()
                );
            }
        });
        return talents;
    }

    public ArrayList<Talent> filterPrice1000(ArrayList<Talent> talents) {
        ServicePackageDAO sd = new ServicePackageDAO();
        ArrayList<Talent> tList = new ArrayList<>();
        for (Talent t : talents) {
            int price = sd.getPackageByIdBasic(t.getTalentID()).getPrice();
//            System.out.println(price);
            if (price <= 1000) {
                tList.add(t);
            }
        }

        return tList;
    }

    public ArrayList<Talent> filterRating4(ArrayList<Talent> talents) {
        ArrayList<Talent> tList = new ArrayList<>();
        for (Talent t : talents) {

            if (t.getRating() >= 4) {
                tList.add(t);
            }
        }

        return tList;
    }

    public ArrayList<Talent> filterCategory(ArrayList<Talent> talents, int categoryId) {
        CategoryDAO cd = new CategoryDAO();
        ArrayList<Talent> tList = new ArrayList<>();
        for (Talent t : talents) {
            for (TalentCategory ct : cd.getTalentByCategoryId(categoryId)) {
                if (ct.getTalentId() == t.getTalentID()) {
                    tList.add(t);
                }
            }
        }
        return tList;
    }

    public static void main(String[] args) {
        TalentDAO td = new TalentDAO();
        ServicePackageDAO sd = new ServicePackageDAO();

        ArrayList<Talent> tList = td.listAllTalent();

//        System.out.println(tList);
        ArrayList<Talent> taList = td.filterCategory(tList, 2);
        for (Talent t : taList) {
            System.out.println(t.getTalentID());
        }

    }

}
