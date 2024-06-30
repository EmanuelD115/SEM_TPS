
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;

public class LogueoAUX {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion_BD cn = new Conexion_BD();
    
    public Logueo loguear_Usuario(String Nombre_Usuario, String Contraseña){
        Logueo l = new Logueo();
        String sql= "SELECT * FROM usuario WHERE Nombre_Usuario = ? AND Contraseña = ?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, Nombre_Usuario);
            ps.setString(2, Contraseña);
            rs = ps.executeQuery();
            if (rs.next()){
                l.setID_usuario(rs.getInt("ID_Usuario"));
                l.setNombre_Usuario(rs.getString("Nombre_Usuario"));
                l.setContraseña(rs.getString("Contraseña"));
            }
        }catch(SQLException e){
                    System.out.println(e.toString());
                    }
        return l;
    }
    public boolean registrar_usuario(Logueo reg){
        String sql = "INSERT INTO usuario (Nombre_Usuario, Contraseña) VALUES (?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, reg.getNombre_Usuario());
            ps.setString(2, reg.getContraseña());
            ps.execute();
            return true;
        } catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}
