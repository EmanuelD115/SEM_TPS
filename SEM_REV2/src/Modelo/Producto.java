
package Modelo;

public class Producto {
    private int ID_Producto;
    private String Nombre_Producto;
    private int Stock;
    private String Descripcion;
    private float precio;
    
    public Producto(){
          
    }

    public Producto(int ID_Producto, String Nombre_Producto, int Stock, String Descripcion, float precio) {
        this.ID_Producto = ID_Producto;
        this.Nombre_Producto = Nombre_Producto;
        this.Stock = Stock;
        this.Descripcion = Descripcion;
        this.precio = precio;
    }

    public int getID_Producto() {
        return ID_Producto;
    }

    public void setID_Producto(int ID_Producto) {
        this.ID_Producto = ID_Producto;
    }

    public String getNombre_Producto() {
        return Nombre_Producto;
    }

    public void setNombre_Producto(String Nombre_Producto) {
        this.Nombre_Producto = Nombre_Producto;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
}
