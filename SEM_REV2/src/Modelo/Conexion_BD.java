
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion_BD {
    Connection con;
    public Connection getConnection(){
        try{
           String myBD = "jdbc:mysql://localhost:3306/db_ecommerce?serverTimezone=UTC";
           con = DriverManager.getConnection(myBD, "root", "");
           return con;
        } catch (SQLException e){
            System.out.println(e.toString());
        }
        return null;
        }
    }