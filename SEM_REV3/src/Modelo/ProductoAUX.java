
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoAUX {
    Connection con;
    ResultSet rs;
    Conexion_BD cn = new Conexion_BD();
    PreparedStatement ps;
    
    public boolean registrar_producto(Producto prod){
        String sql = "INSERT INTO producto (Nombre_Producto, Stock, Descripcion, Precio) VALUES (?,?,?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNombre_Producto());
            ps.setInt(2, prod.getStock());
            ps.setString(3, prod.getDescripcion());
            ps.setFloat(4, prod.getPrecio());
            ps.execute();
            return true;
        } catch (SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public List Listar_producto(){
        List<Producto> Listado = new ArrayList();
        String sql = "SELECT * FROM producto";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Producto prod = new Producto();
                prod.setID_Producto(rs.getInt("ID_Producto"));
                prod.setNombre_Producto(rs.getString("Nombre_Producto"));
                prod.setStock(rs.getInt("Stock"));
                prod.setDescripcion(rs.getString("Descripcion"));
                prod.setPrecio(rs.getFloat("Precio"));
                Listado.add(prod);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return Listado;
    }
}
    
