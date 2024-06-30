
package Modelo;

public class Formulario_Cliente {
    private int ID_Cliente;
    private int ID_Usuario;
    private String Nombre_Cliente;
    private String Apellidos_Cliente;
    private int DNI_Cliente;
    private String Domicilio_Cliente;
    private int Telefono_Cliente;
    private String Correo_Cliente;
    private String Tarjeta_credito;
    private int Numero_tarjeta;
    
    public Formulario_Cliente(){
        
    }
    
    public Formulario_Cliente(int ID_Cliente, int ID_Usuario, String Nombre_Cliente, String Apellidos_Cliente, int DNI_Cliente, String Domicilio_Cliente, int Telefono_Cliente, String Correo_Cliente, String Tarjeta_credito, int Numero_tarjeta){
        this.Apellidos_Cliente = Apellidos_Cliente;
        this.Correo_Cliente = Correo_Cliente;
        this.DNI_Cliente = DNI_Cliente;
        this.Domicilio_Cliente = Domicilio_Cliente;
        this.ID_Cliente = ID_Cliente;
        this.ID_Usuario = ID_Usuario;
        this.Nombre_Cliente = Nombre_Cliente;
        this.Numero_tarjeta = Numero_tarjeta;
        this.Tarjeta_credito = Tarjeta_credito;
        this.Telefono_Cliente = Telefono_Cliente;
        
    }

    public int getID_Cliente() {
        return ID_Cliente;
    }

    public void setID_Cliente(int ID_Cliente) {
        this.ID_Cliente = ID_Cliente;
    }

    public int getID_Usuario() {
        return ID_Usuario;
    }

    public void setID_Usuario(int ID_Usuario) {
        this.ID_Usuario = ID_Usuario;
    }

    public String getNombre_Cliente() {
        return Nombre_Cliente;
    }

    public void setNombre_Cliente(String Nombre_Cliente) {
        this.Nombre_Cliente = Nombre_Cliente;
    }

    public String getApellidos_Cliente() {
        return Apellidos_Cliente;
    }

    public void setApellidos_Cliente(String Apellidos_Cliente) {
        this.Apellidos_Cliente = Apellidos_Cliente;
    }

    public int getDNI_Cliente() {
        return DNI_Cliente;
    }

    public void setDNI_Cliente(int DNI_Cliente) {
        this.DNI_Cliente = DNI_Cliente;
    }

    public String getDomicilio_Cliente() {
        return Domicilio_Cliente;
    }

    public void setDomicilio_Cliente(String Domicilio_Cliente) {
        this.Domicilio_Cliente = Domicilio_Cliente;
    }

    public int getTelefono_Cliente() {
        return Telefono_Cliente;
    }

    public void setTelefono_Cliente(int Telefono_Cliente) {
        this.Telefono_Cliente = Telefono_Cliente;
    }

    public String getCorreo_Cliente() {
        return Correo_Cliente;
    }

    public void setCorreo_Cliente(String Correo_Cliente) {
        this.Correo_Cliente = Correo_Cliente;
    }

    public String getTarjeta_credito() {
        return Tarjeta_credito;
    }

    public void setTarjeta_credito(String Tarjeta_credito) {
        this.Tarjeta_credito = Tarjeta_credito;
    }

    public int getNumero_tarjeta() {
        return Numero_tarjeta;
    }

    public void setNumero_tarjeta(int Numero_tarjeta) {
        this.Numero_tarjeta = Numero_tarjeta;
    }
    
    
}
