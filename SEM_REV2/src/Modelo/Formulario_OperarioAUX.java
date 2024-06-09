
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Formulario_OperarioAUX {
    Connection con;
    Conexion_BD cn = new Conexion_BD();
    PreparedStatement ps;
    
    public boolean registrar_operario(Formulario_Operario fo){
        String sql = "INSERT INTO operario (ID_Usuario, Nombre, Apellidos, Area, Domicilio, Telefono, Correo) VALUES (?,?,?,?,?,?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, fo.getID_Usuario());
            ps.setString(2, fo.getNombre());
            ps.setString(3, fo.getApellidos());
            ps.setString(4, fo.getArea());
            ps.setString(5, fo.getDomicilio());
            ps.setInt(6, fo.getTelefono());
            ps.setString(7, fo.getCorreo());
            ps.execute();
            return true;
        } catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}
