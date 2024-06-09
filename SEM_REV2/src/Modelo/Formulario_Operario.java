
package Modelo;

public class Formulario_Operario {
    private int ID_Usuario;
    private String Nombre;
    private String Apellidos;
    private String Area;
    private String Domicilio;
    private int Telefono;
    private String Correo;

    public Formulario_Operario() {
    }

    public Formulario_Operario(int ID_Usuario, String Nombre, String Apellidos, String Area, String Domicilio, int Telefono, String Correo) {
        this.ID_Usuario = ID_Usuario;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Area = Area;
        this.Domicilio = Domicilio;
        this.Telefono = Telefono;
        this.Correo = Correo;
    }

    public int getID_Usuario() {
        return ID_Usuario;
    }

    public void setID_Usuario(int ID_Usuario) {
        this.ID_Usuario = ID_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public String getDomicilio() {
        return Domicilio;
    }

    public void setDomicilio(String Domicilio) {
        this.Domicilio = Domicilio;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }
    
}
