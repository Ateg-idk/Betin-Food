package Modelo;

import java.io.File;
import java.time.LocalDate;

public class Promocion {

     int codigo;
     String nombre;
     LocalDate fechaInicio;
     LocalDate fechaFin;
     String descripcion;
     String  imagen;
     Double precio;
         // Constructor principal para crear una nueva Promocion sin código
    public Promocion(String nombre, LocalDate fechaInicio, LocalDate fechaFin, String descripcion, String  imagen,Double precio) {
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.precio = precio;
    }
    public Promocion(int codigo, String nombre, LocalDate fechaInicio, LocalDate fechaFin, String descripcion, String  imagen,Double precio) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.precio = precio;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public LocalDate getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(LocalDate fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public LocalDate getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(LocalDate fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String  getImagen() {
        return imagen;
    }

    public void setImagen(String  imagen) {
        this.imagen = imagen;
    }

    public Double  getPrecio() {
        return precio;
    }

    public void setPrecio(Double  imagen) {
        this.precio = imagen;
    }

    public Promocion() {
    }



}
    