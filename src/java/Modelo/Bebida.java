/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Fabian
 */
public class Bebida {
    
    int codigoBebida;
    String nombreBebida;
    Double precio;
    String descripcion;
    String imagenBebida;

    public Bebida() {
    }

    public Bebida(String nombreBebida, Double precio, String descripcion, String imagenBebida) {
        this.nombreBebida = nombreBebida;
        this.precio = precio;
        this.descripcion = descripcion;
        this.imagenBebida = imagenBebida;
    }
    
    public Bebida(int codigoBebida, String nombreBebida, Double precio, String descripcion, String imagenBebida) {
        this.codigoBebida = codigoBebida;
        this.nombreBebida = nombreBebida;
        this.precio = precio;
        this.descripcion = descripcion;
        this.imagenBebida = imagenBebida;
    }
    
    public int getCodigoBebida() {
        return codigoBebida;
    }

    public void setCodigoBebida(int codigoBebida) {
        this.codigoBebida = codigoBebida;
    }

    public String getNombreBebida() {
        return nombreBebida;
    }

    public void setNombreBebida(String nombreBebida) {
        this.nombreBebida = nombreBebida;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagenBebida() {
        return imagenBebida;
    }

    public void setImagenBebida(String imagenBebida) {
        this.imagenBebida = imagenBebida;
    }

    
    
}
