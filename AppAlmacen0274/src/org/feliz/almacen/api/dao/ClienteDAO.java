package org.feliz.almacen.api.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.feliz.almacen.api.modelo.Cliente;
import org.feliz.almacen.api.modelo.ICliente;

public class ClienteDAO extends AbstractGenericDAO<ICliente,String> implements IClienteDAO{
	
	private static final String QUERY_FINDBYID = "SELECT * FROM cliente WHERE idCliente = ?";
	private static final String QUERY_FINDBYEXAMPLE = "SELECT * FROM cliente where ";
	private static final String QUERY_FINDALL = "SELECT * FROM cliente";
	private static final String QUERY_UPDATE = "UPDATE cliente SET idCliente = ?, nombre = ?, apellido1 = ?, "
			+ "apellido2 = ?, DNI = ?, Telefono = ? WHERE idCliente = ?";
	private static final String QUERY_DELETE = "DELETE FROM cliente WHERE idCliente = ?, nombre = ?, apellido1 = ?,"
			+ " apellido2 = ?, DNI = ?, Telefono = ?";
	private static final String QUERY_SAVE = "Insert * from cliente";
	
	
	public List<ICliente> findByID(String id) throws SQLException{
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement(QUERY_FINDBYID);
		ps.setString(1, (String) id);
		List<ICliente> resultado = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();
		
		String val = null;
		Cliente res = null;
		
		while(rs.next()) {
			val = rs.getString(1);
			res = new Cliente();
			res.setId(val);
			res.setNombre(rs.getNString(2));
			res.setApellido2(rs.getNString(3));
			res.setApellido1(rs.getNString(4));
			res.setNif(rs.getNString(5));
			res.setTelefono(rs.getNString(6));
			resultado.add(res);
		}
		
		return resultado;
		
	}
	
	public List<ICliente> findAll() throws SQLException {
		
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement(QUERY_FINDALL);
		
		List<ICliente> resultado = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();
		
		String val = null;
		Cliente res = null;

		while (rs.next()) {
			val = rs.getString(1);
			res = new Cliente();
			res.setId(val);
			res.setNombre(rs.getString(2));
			res.setApellido1(rs.getString(3));
			res.setApellido2(rs.getString(4));
			res.setNif(rs.getString(5));
			res.setTelefono(rs.getString(6));
			resultado.add(res);
		}			
		return resultado;
	}
	
	
	public List<ICliente> findByExample(ICliente entidad) throws SQLException {
		Connection con = getConnection();
		ICliente enti= entidad;
		
		String query = QUERY_FINDBYEXAMPLE;
		boolean engadirAnd = false;
		int posicion = 0;
		int posicionId = 0;
		int posicionNombre =0;
		int posicionApellido1 = 0;
		int posicionApellido2 =0;
		int posicionNif = 0;
		int posicionTelefono =0;

		if (null!= enti.getId()) {
			query= query + " idCliente= ? " + enti.getNif();
			engadirAnd = true;
			posicion++;
			posicionId=posicion;
		}
		
		if (null!= enti.getNombre()) {
			query= query + ( engadirAnd ? " AND " : ""   )  + " nombre= ? ";	
			engadirAnd = true;
			posicion++;
			posicionNombre=posicion;
		}
		
		if (null!= enti.getApellido1()) {
			query= query + ( engadirAnd ? " AND " : ""   )  + " apellido1= ? ";	
			engadirAnd = true;
			posicion++;
			posicionApellido1=posicion;
		}
		
		if (null!= enti.getApellido2()) {
			query= query + ( engadirAnd ? " AND " : ""   )  + " apellido2= ? ";	
			engadirAnd = true;
			posicion++;
			posicionApellido2=posicion;
		}
		
		if (null!= enti.getNif()) {
			query= query + ( engadirAnd ? " AND " : ""   )  + " dni= ? ";	
			engadirAnd = true;
			posicion++;
			posicionNif=posicion;
		}
		
		if (null!= enti.getTelefono()) {
			query= query + ( engadirAnd ? " AND " : ""   )  + " telefono= ? ";	
			engadirAnd = true;
			posicion++;
			posicionTelefono=posicion;
		}
		
		
		//TODO completar
		
		PreparedStatement ps = con.prepareStatement(query);
		//ps.setString(1,enti.getId());
		if (null!= enti.getId()) {
			ps.setString(posicionId,enti.getId());
		}
		
		if (null!= enti.getNombre()) {
			ps.setString(posicionNombre,enti.getNombre());		
		}
		
		if (null!= enti.getApellido1()) {
			ps.setString(posicionApellido1,enti.getApellido1());
		}
		
		if (null!= enti.getApellido2()) {
			ps.setString(posicionApellido2,enti.getApellido2());		
		}
		
		if (null!= enti.getNif()) {
			ps.setString(posicionNif,enti.getNif());
		}
		
		if (null!= enti.getTelefono()) {
			ps.setString(posicionTelefono,enti.getTelefono());		
		}
				
		List<ICliente> resultado = new ArrayList<ICliente>();
		//ResultSet rs = ps.executeQuery();
		
		String val = null;
		Cliente res = null;

/*
		ps.setString(1, enti.getId());
		ps.setString(2, enti.getNombre());
		ps.setString(3, enti.getApellido1());
		ps.setString(4, enti.getApellido2());
		ps.setString(5, enti.getNif());
		ps.setString(6, enti.getTelefono());
		ps.setString(7, enti.getId());
*/
		//List<ICliente> resultado1 = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();
		
		while (rs.next()) {
			res= new Cliente();
			res.setId(rs.getString("idCliente"));
			res.setNombre(rs.getString("nombre"));
			res.setApellido1(rs.getString("apellido1"));
			res.setApellido2(rs.getString("apellido2"));
			res.setNif(rs.getString("dni"));
			res.setTelefono(rs.getString("telefono"));

			resultado.add(res);
		}
		return resultado;
	}


	public void save(ICliente entidad) throws SQLException {
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement(QUERY_SAVE);
		
		ps.setString(1, ((ICliente) entidad).getId());
		ps.setString(2, ((ICliente) entidad).getNombre());
		ps.setString(3, ((ICliente) entidad).getApellido1());
		ps.setString(4, ((ICliente) entidad).getApellido2());
		ps.setString(5, ((ICliente) entidad).getNif());
		ps.setString(6, ((ICliente) entidad).getTelefono());
		ps.setString(7, ((ICliente) entidad).getId());
		List<ICliente> resultado3 = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();	
	}

	public void update(ICliente entidad) throws SQLException {
		
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement(QUERY_UPDATE);
		
		ps.setString(1, entidad.getId());
		ps.setString(2, entidad.getNombre());
		ps.setString(3, entidad.getApellido1());
		ps.setString(4, entidad.getApellido2());
		ps.setString(5, entidad.getNif());
		ps.setString(6, entidad.getTelefono());
		ps.setString(7, entidad.getId());
		List<ICliente> resultado2 = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();
	}
	

	@Override
	public double getFacturacionAnual(int year) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void delete(ICliente entidad) throws SQLException {
		
		Connection con = getConnection();
		
		PreparedStatement ps = con.prepareStatement(QUERY_DELETE);
		
		ps.setString(1, entidad.getId());
		ps.setString(2, entidad.getNombre());
		ps.setString(3, entidad.getApellido1());
		ps.setString(4, entidad.getApellido2());
		ps.setString(5, entidad.getNif());
		ps.setString(6, entidad.getTelefono());
		ps.setString(7, entidad.getId());
		List<ICliente> resultado3 = new ArrayList<ICliente>();
		
		ResultSet rs = ps.executeQuery();
	}


}
