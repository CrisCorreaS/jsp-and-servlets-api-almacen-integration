package org.feliz.almacen.api;

import java.io.Serializable;
import java.util.*;
import java.util.Iterator;


import org.feliz.almacen.api.dao.*;
import org.feliz.almacen.api.modelo.*;
import org.feliz.almacen.api.dao.ProducerFactoryDAO;

public class MotorApiServicioNegocio implements Serializable {
	
	private static final long serialVersionVID=1L;
	
	private static final String[] DATOS_INICIALES = {"uno","dos","tres"};
	
	private List<String> datos;
	
	public MotorApiServicioNegocio() {
		super();
		this.datos = Arrays.asList(DATOS_INICIALES);
	}
	
	public List<String> getDatos(){
		return datos;
	}
	
	public void setDatos(List<String> datos) {
		this.datos=datos;
	}
	
	public List<String> getListaClientes() throws Exception{
		IFactoryDAO mFactoryDAO = ProducerFactoryDAO.getFactoryDAO();
		IClienteDAO dao = mFactoryDAO.getClienteDAO();
		
		List<ICliente> lc = dao.findAll();
		
		List <String> resultado = new ArrayList<String>();
		
		for (Iterator<ICliente> iterator = lc.iterator(); iterator.hasNext();) {
			ICliente iCliente = (ICliente) iterator.next();
			
			resultado.add(iCliente.toString());
		}
		
		return resultado;
	}
	

}
