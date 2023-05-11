package org.feliz.almacen.api.dao;

import org.apache.commons.dbcp2.BasicDataSource;
import org.feliz.almacen.api.configuration.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import org.slf4j.MarkerFactory;

import java.sql.SQLException;

import javax.sql.DataSource;

public class MariaDBFactoryDAO extends ProducerFactoryDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(MariaDBFactoryDAO.class);
	
	private final static String URL = "jdbc:mariadb://localhost:3306/almacen";
	private final static String USER = "root";
	private final static String PASSWORD = "";
	private final static String DRIVER_CLASS = "org.mariadb.jdbc.Driver";

	
	private static DataSource dataSource = null;
	
	public DataSource getDataSource() throws SQLException{
		if(dataSource == null) {
			dataSource = doDataSource();
		}
		return dataSource;
	}
	
	private DataSource doDataSource() throws SQLException{
		DataSource ds = null;
		
		/*if(ConfigApplication.getInstance().isModCLI()) {
			ds=doDataSourceFromConfig();
		}else {
			ds=doDataSourceFromConfig();
		}*/
		
		
		ds=doDataSourceFromConfig();
		
		
		
		String confidentialMarkerText = "CONFIDENTIAL";
		
		Marker confidentialMarker = MarkerFactory.getMarker(confidentialMarkerText);
		logger.debug("This logger supports confidential messages....");
		logger.debug(confidentialMarker, "This is a confidential message....");
		logger.debug("Just logged a confidential message");
		
		return ds;
	}

	private DataSource doDataSourceFromConfig() {
		
		BasicDataSource ds = new BasicDataSource();
		
		ds.setDriverClassName(DRIVER_CLASS);
		ds.setUsername(USER);
		ds.setPassword(PASSWORD);
		ds.setUrl(URL);
		ds.setInitialSize(1);
		ds.setMaxIdle(2);
		ds.setTestWhileIdle(true);
		ds.setTimeBetweenEvictionRunsMillis(1000);
		ds.setTestOnReturn(true);
		
		return ds;
	}
	
	public IClienteDAO getClienteDAO() throws SQLException {
		IClienteDAO resultado = new ClienteDAO();
		resultado.setDataSource(getDataSource());
		return resultado;
	}
	 
	public IVendedorDAO getVendedorDAO() {
		//TODO
		return null;
	}
	
	public ICompraDAO getCompraDAO() {
		//TODO
		return null;
	}
	
	public IProductoDAO getProductoDAO() {
		//TODO
		return null;
	}
}
