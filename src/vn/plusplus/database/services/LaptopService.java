package vn.plusplus.database.services;

import vn.plusplus.database.models.LaptopEntity;

import java.sql.Connection;
import java.sql.ResultSet;
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
        try {
            List<LaptopEntity> responses = new ArrayList<>();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM laptop WHERE maker='" + maker + "'");
            while (rs.next()) {
                String name = rs.getString(2);
                System.out.println(name);
            }
        } catch (Exception e) {
            System.out.println("Error when find laptop by maker. " + e);
        }
        return null;
    }

}
