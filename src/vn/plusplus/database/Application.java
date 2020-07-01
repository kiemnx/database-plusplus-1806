package vn.plusplus.database;

import vn.plusplus.database.services.LaptopService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

public class Application {
    public static void main(String[] args) {
        System.out.println("-------- MySQL JDBC Connection Demo ------------");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found !!");
            return;
        }
        System.out.println("MySQL JDBC Driver Registered!");
        Connection connection = null;
        try {
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/store_cms_plusplus", "root", "1234");
            System.out.println("SQL Connection to database established!");

        } catch (SQLException e) {
            System.out.println("Connection Failed! Check output console");
            return;
        }

        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhập lựa chọn:");
        System.out.println("1. Tìm kiếm latop theo hãng");
        LaptopService laptopService = new LaptopService(connection);

        int option = scanner.nextInt();
        scanner.nextLine();
        switch (option){
            case 1:
                System.out.println("Nhập vào hãng:");
                String maker = scanner.nextLine();
                laptopService.findAllByMaker(maker.trim().toUpperCase());
        }
    }
}
