
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Formulario_ClienteAUX {
    Connection con;
    Conexion_BD cn = new Conexion_BD();
    PreparedStatement ps;
    
    public boolean registrar_cliente(Formulario_Cliente fc){
        String sql = "INSERT INTO cliente (ID_Usuario, Nombre_Cliente, Apellidos_Cliente, DNI_Cliente, Domicilio_Cliente, Telefono_Cliente, Correo_Cliente, Tarjeta_credito, Numero_tarjeta ) VALUES (?,?,?,?,?,?,?,?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, fc.getID_Usuario());
            ps.setString(2, fc.getNombre_Cliente());
            ps.setString(3, fc.getApellidos_Cliente());
            ps.setInt(4, fc.getDNI_Cliente());
            ps.setString(5, fc.getDomicilio_Cliente());
            ps.setInt(6, fc.getTelefono_Cliente());
            ps.setString(7, fc.getCorreo_Cliente());
            ps.setString(8, fc.getTarjeta_credito());
            ps.setInt(9, fc.getNumero_tarjeta());
            ps.execute();
            return true;
        } catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}
