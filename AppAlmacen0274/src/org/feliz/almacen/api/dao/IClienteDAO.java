package org.feliz.almacen.api.dao;

import org.feliz.almacen.api.modelo.*;

public interface IClienteDAO extends IGenericDAO<ICliente, String>{
	
	public double getFacturacionAnual(int year);

}
