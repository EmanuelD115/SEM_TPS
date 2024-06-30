
package Modelo;

public class Compra {
    private int ID_Producto;
    private int ID_Cliente;
    private String Nombre_Cliente;
    private String Domicilio_Cliente;
    private String info_compra;
    
    public Compra(){
        
    }

    public Compra(int ID_Producto, int ID_Cliente, String Nombre_Cliente, String Domicilio_Cliente, String info_compra) {
        this.ID_Producto = ID_Producto;
        this.ID_Cliente = ID_Cliente;
        this.Nombre_Cliente = Nombre_Cliente;
        this.Domicilio_Cliente = Domicilio_Cliente;
        this.info_compra = info_compra;
    }

    public int getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public int getID_Cliente() {
        return ID_Cliente;
    }

    public void setID_Cliente(int ID_Cliente) {
        this.ID_Cliente = ID_Cliente;
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
    
}
