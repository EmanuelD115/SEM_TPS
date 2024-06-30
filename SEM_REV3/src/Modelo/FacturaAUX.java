
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacturaAUX {
    Connection con;
    ResultSet rs;
    Conexion_BD cn = new Conexion_BD();
    PreparedStatement ps;
    
    public List Generar_Factura(){
        List<Factura> GFactura = new ArrayList();
        String sql = "SELECT `CM`.`ID_Transaccion`, `US`.`Nombre_Usuario`, `CL`.`Nombre_Cliente`, `CL`.`Domicilio_Cliente`, `CM`.`Info_compra`, `PR`.`Nombre_Producto`, `PR`.`Precio` FROM `usuario` AS `US` LEFT JOIN `cliente` AS `CL` ON `CL`.`ID_Usuario` = `US`.`ID_Usuario` LEFT JOIN `compra` AS `CM` ON `CM`.`ID_Cliente` = `CL`.`ID_Cliente` LEFT JOIN `producto` AS `PR` ON `CM`.`ID_Producto` = `PR`.`ID_Producto` ORDER BY `ID_Transaccion` DESC LIMIT 1";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Factura fact = new Factura();
                fact.setID_Transaccion(rs.getInt("ID_Transaccion"));
                fact.setNombre_Usuario(rs.getString("Nombre_Usuario"));
                fact.setNombre_Cliente(rs.getString("Nombre_Cliente"));
                fact.setDomicilio_Cliente(rs.getString("Domicilio_Cliente"));
                fact.setInfo_compra(rs.getString("info_compra"));
                fact.setNombre_Producto(rs.getString("Nombre_Producto"));
                fact.setPrecio(rs.getFloat("Precio"));
                GFactura.add(fact);
            }
        } catch (SQLException e) {
            System.out.println(e.toString());
        }
        return GFactura;
    }
}
