package vn.plusplus.database.services;

import vn.plusplus.database.models.LaptopEntity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LaptopService {
    private Connection con;

    public LaptopService() {
    }

    public LaptopService(Connection connection) {
        this.con = connection;
    }




    public List<LaptopEntity> findAllByMaker(String maker) {
        String sql = "SELECT * FROM laptop WHERE maker='" + maker + "'";
        List<LaptopEntity> laptopEntities = queryDatabase(sql);
        return laptopEntities;
    }

    public List<LaptopEntity> findByPrice(Long fromPrice, Long toPrice) {
        String sql = "";
        if (fromPrice != null && toPrice == null) {
            sql = "Select*from laptop where price>=" + fromPrice;
        } else if (fromPrice == null && toPrice != null) {
            sql = "Select*from laptop where price<=" + toPrice;
        } else if (fromPrice != null && toPrice != null) {
            sql = "Select*from laptop where price between " + fromPrice + " and " + toPrice;
        }
        List<LaptopEntity> laptopEntities = queryDatabase(sql);
        return laptopEntities;
    }


    public List<LaptopEntity> searchLaptop(Float fromPrice, Float toPrice, String maker, String screenSize,
                                           String ram, String cpu, String hdd, String ssd, String type, String card, String order){
        String sql = "SELECT * FROM laptop WHERE TRUE";
        if(fromPrice != null){
            sql += " AND price >="+ fromPrice;
        }
        if(toPrice != null){
            sql += " AND price <=" + toPrice;
        }
        if(maker != null){
            sql += " AND maker='" + maker +"'";
        }
        if(screenSize != null){
            sql += " AND screen_resolution='" + screenSize + "'";
        }
        if(ram != null){
            sql += " AND ram='" + ram + "'";
        }
        if(cpu != null){
            sql += " AND cpu LIKE '%" + cpu + "%'";
        }
        if(hdd != null){
            sql += " AND hdd='" + hdd + "'";
        }
        if(ssd != null){
            sql += " AND ssd='" + ssd +"'";
        }
        if(type != null){
            sql += " AND type='" + type + "'";
        }
        if(card != null){
            sql += " AND card='" + card + "'";
        }
        if(order != null){
            if(order.equals("DESC")){
                sql += " ORDER BY price DESC";
            } else {
                sql += " ORDER BY price ASC";
            }
        }

        System.out.println(sql);
        List<LaptopEntity> response = queryDatabase(sql);
        return response;
    }


    private List<LaptopEntity> queryDatabase(String sql){
        List<LaptopEntity> laptopEntities = new ArrayList<>();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                LaptopEntity laptopEntity = new LaptopEntity(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getFloat(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getInt(14),
                        rs.getTimestamp(15),
                        rs.getTimestamp(16)
                );
                laptopEntities.add(laptopEntity);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return laptopEntities;
    }

}
