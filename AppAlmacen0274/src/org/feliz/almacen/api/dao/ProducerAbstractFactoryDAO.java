package org.feliz.almacen.api.dao;

import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import org.slf4j.MarkerFactory;

public abstract class ProducerAbstractFactoryDAO implements IFactoryDAO {
	
	private static Logger logger = LoggerFactory.getLogger("logger");
	private static Marker init = MarkerFactory.getMarker("Init");
	private enum FactoryDAO{MARIADB, POSTGRESQL, MYSQL};
	
	private static IFactoryDAO getFactoryDAO(FactoryDAO whichFactoryDAO) throws IllegalArgumentException{
		logger.debug(init, "hyuyuy", whichFactoryDAO);
		switch (whichFactoryDAO) {
		case MARIADB:
			return new MariaDBFactoryDAO();
		default:
			throw new IllegalArgumentException("Unknown FactoryDAO");
		}
	}

}
