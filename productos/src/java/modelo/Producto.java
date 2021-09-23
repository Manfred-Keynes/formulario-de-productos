/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author mfer_
 */

public class Producto {
    //private int id;
    private String producto;
    private String marca;
    private String descripcion;
    private String precio_costo;
    private String precio_venta;
    private int existencia;
    ConectorDB cn;
    public  Producto(){}

     public Producto(int existencia, String producto, String descripcion, String precio_costo, String precio_venta) {
        this.existencia = existencia;
        this.producto = producto;
        this.descripcion = descripcion;
        this.precio_costo = precio_costo;
        this.precio_venta = precio_venta;
    }
    
     public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecio_costo() {
        return precio_costo;
    }

    public void setPrecio_costo(String precio_costo) {
        this.precio_costo = precio_costo;
    }

    public String getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(String precio_venta) {
        this.precio_venta = precio_venta;
    }
    

   /** public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }*/

   /** public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }*/
   
  

    
      //metodos
    public void agregar(){}
    public void modificar(){}
    public void mostrar(){}
    public void eliminar(){}
    
}
