package senati.pe.entity;
import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "jefe")
public class Jefe implements Serializable {

    public Jefe() {
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer jefe_id;
    @Column(name = "name")
    private String nombre;
    @Column(name = "last_name")
    private String apellidos;
    @Column(name = "nationality")
    private String nacionalidad;
    @Column(name = "phone")
    private String telefono;

    public Jefe(Integer jefeId, String nombre, String apellidos, String nacionalidad, String telefono) {
        jefe_id = jefeId;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.nacionalidad = nacionalidad;
        this.telefono = telefono;
    }

    public Integer getJefe_id() {
        return jefe_id;
    }

    public void setJefe_id(Integer jefe_id) {
        this.jefe_id = jefe_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getTelefono() {
        return telefono;
    }
}
