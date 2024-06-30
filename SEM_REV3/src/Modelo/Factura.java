
package Modelo;

public class Factura {
    private int ID_Transaccion;
    private String Nombre_Usuario;
    private String Nombre_Cliente;
    private String Domicilio_Cliente;
    private String info_compra;
    private String Nombre_Producto;
    private float Precio;
    
    public Factura(){
        
    }

    public Factura(int ID_Transaccion, String Nombre_Usuario, String Nombre_Cliente, String Domicilio_Cliente, String info_compra, String Nombre_Producto, float Precio) {
        this.ID_Transaccion = ID_Transaccion;
        this.Nombre_Usuario = Nombre_Usuario;
        this.Nombre_Cliente = Nombre_Cliente;
        this.Domicilio_Cliente = Domicilio_Cliente;
        this.info_compra = info_compra;
        this.Nombre_Producto = Nombre_Producto;
        this.Precio = Precio;
    }

    public int getID_Transaccion() {
        return ID_Transaccion;
    }

    public void setID_Transaccion(int ID_Transaccion) {
        this.ID_Transaccion = ID_Transaccion;
    }

    public String getNombre_Usuario() {
        return Nombre_Usuario;
    }

    public void setNombre_Usuario(String Nombre_Usuario) {
        this.Nombre_Usuario = Nombre_Usuario;
    }

    public String getNombre_Cliente() {
        return Nombre_Cliente;
    }

    public void setNombre_Cliente(String Nombre_Cliente) {
        this.Nombre_Cliente = Nombre_Cliente;
    }

    public String getDomicilio_Cliente() {
        return Domicilio_Cliente;
    }

    public void setDomicilio_Cliente(String Domicilio_Cliente) {
        this.Domicilio_Cliente = Domicilio_Cliente;
    }

    public String getInfo_compra() {
        return info_compra;
    }

    public void setInfo_compra(String info_compra) {
        this.info_compra = info_compra;
    }

    public String getNombre_Producto() {
        return Nombre_Producto;
    }

    public void setNombre_Producto(String Nombre_Producto) {
        this.Nombre_Producto = Nombre_Producto;
    }

    public float getPrecio() {
        return Precio;
    }

    public void setPrecio(float Precio) {
        this.Precio = Precio;
    }
    
}
