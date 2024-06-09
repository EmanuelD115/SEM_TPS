
package Modelo;

public class Logueo {
    private int ID_Usuario;
    private String Nombre_Usuario;
    private String Contraseña;

    public Logueo() {
    }

    public Logueo(int ID_usuario, String Nombre_Usuario, String Contraseña) {
        this.ID_Usuario = ID_usuario;
        this.Nombre_Usuario = Nombre_Usuario;
        this.Contraseña = Contraseña;
    }

    public int getID_usuario() {
        return ID_Usuario;
    }

    public void setID_usuario(int ID_usuario) {
        this.ID_Usuario = ID_usuario;
    }

    public String getNombre_Usuario() {
        return Nombre_Usuario;
    }

    public void setNombre_Usuario(String Nombre_Usuario) {
        this.Nombre_Usuario = Nombre_Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
    
    
}
