
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CompraAUX {
    Connection con;
    Conexion_BD cn = new Conexion_BD();
    PreparedStatement ps;
    
    public boolean realizar_compra(Compra com){
        String sql = "INSERT INTO compra (ID_Producto, ID_Cliente, Nombre_Cliente, Domicilio_Cliente, info_compra) VALUES (?,?,?,?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, com.getID_Producto());
            ps.setInt(2, com.getID_Cliente());
            ps.setString(3, com.getNombre_Cliente());
            ps.setString(4, com.getDomicilio_Cliente());
            ps.setString(5, com.getInfo_compra());
            ps.execute();
            return true;
        } catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}
