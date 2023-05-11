package org.feliz.almacen.api.modelo;

public class Cliente implements ICliente{
	
	private String id;
	private String nif;
	private String nombre;
	private String telefono;
	private String apellido1;
	private String apellido2;
	
	public Cliente() {
		super();
	}
	
	
	public Cliente(String id, String nif, String nombre, String telefono, String apellido1, String apellido2) {
		super();
		this.id = id;
		this.nif = nif;
		this.nombre = nombre;
		this.telefono = telefono;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNif() {
		return nif;
	}
	public void setNif(String nif) {
		this.nif = nif;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getApellido1() {
		return apellido1;
	}
	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}
	public String getApellido2() {
		return apellido2;
	}
	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	@Override
	public String toString() {
		String resultado = "";
		resultado = resultado + "Id Cliente: " + getId();
		resultado = resultado + "; DNI: " + getNif();
		resultado = resultado + "; Nombre: " + getNombre();
		resultado = resultado + "; Primer apellido: " + getApellido1();
		resultado = resultado + "; Segundo apellido: " + getApellido2();
		resultado = resultado + "; Teléfono: " + getTelefono();
		
		return resultado;
	}
	
	

}
