package org.feliz.almacen.api.modelo;

public class Producto implements IProducto{
	
	private String idProducto;
	private float precio;
	private String nombre;
	private String codBarras;
	private int cantidadStock;
	
	public Producto() {
		super();
	}
	
	
	public Producto(String idProducto, float precio, String nombre, String codBarras, int cantidadStock) {
		super();
		this.idProducto = idProducto;
		this.precio = precio;
		this.nombre = nombre;
		this.codBarras = codBarras;
		this.cantidadStock = cantidadStock;
	}


	public String getIdProducto() {
		return idProducto;
	}


	public void setIdProducto(String idProducto) {
		this.idProducto = idProducto;
	}


	public float getPrecio() {
		return precio;
	}


	public void setPrecio(float precio) {
		this.precio = precio;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getCodBarras() {
		return codBarras;
	}


	public void setCodBarras(String codBarras) {
		this.codBarras = codBarras;
	}


	public int getCantidadStock() {
		return cantidadStock;
	}


	public void setCantidadStock(int cantidadStock) {
		this.cantidadStock = cantidadStock;
	}

}
