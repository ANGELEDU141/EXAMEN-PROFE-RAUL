package senati.pe.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "proveedor")
public class Proveedor implements Serializable {

    public Proveedor() {
    }

    public Proveedor(Integer proveedorId, String nombre, Long ruc, Integer telefono, String website) {
        this.proveedorId = proveedorId;
        this.nombre = nombre;
        RUC = ruc;
        Telefono = telefono;
        Website = website;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer proveedorId;
    @Column(name = "name")
    private String nombre;
    @Column(unique = true, nullable = false)
    private Long RUC;
    @Column(name = "phone")
    private Integer Telefono;
    @Column(name = "website")
    private String Website;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Long getRUC() {
        return RUC;
    }

    public void setRUC(Long RUC) {
        this.RUC = RUC;
    }

    public Integer getTelefono() {
        return Telefono;
    }

    public void setTelefono(Integer telefono) {
        Telefono = telefono;
    }

    public String getWebsite() {
        return Website;
    }

    public void setWebsite(String website) {
        Website = website;
    }

    public Integer getProveedorId() {
        return proveedorId;
    }

    public void setProveedorId(Integer proveedorId) {
        this.proveedorId = proveedorId;
    }
}
