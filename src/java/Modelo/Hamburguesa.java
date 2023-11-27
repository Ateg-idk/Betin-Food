/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Blob;

/**
 *
 * @author samir
 */
public class Hamburguesa {

    int id;
    String nombre;
    String descripcion;
    double precio;
    String fotoHamburguesa;

    public Hamburguesa() {
    }

    public Hamburguesa(String nombre, String descripcion, double precio, String fotoHamburguesa) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.fotoHamburguesa = fotoHamburguesa;
    }

    public Hamburguesa(int id, String nombre, String descripcion, double precio, String fotoHamburguesa) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.fotoHamburguesa = fotoHamburguesa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getFotoHamburguesa() {
        return fotoHamburguesa;
    }

    public void setFotoHamburguesa(String fotoHamburguesa) {
        this.fotoHamburguesa = fotoHamburguesa;
    }

}
