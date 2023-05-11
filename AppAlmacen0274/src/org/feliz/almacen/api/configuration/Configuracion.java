package org.feliz.almacen.api.configuration;

import java.io.*;
import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Configuracion {
	

	private static final Logger logger = LoggerFactory.getLogger(Configuracion.class);
	private Properties config=null;
	private static Configuracion instance = null;
	
	public static Configuracion getInstance(String ruta) {
		if(instance == null) {
			instance = new Configuracion();
			instance.loadProperties(ruta);
		}
		return instance;
	}
	
	protected void loadProperties(String ruta) {
		
		InputStream in = null;
		
		try {
		
			//String mruta = System.getProperty(APP_CONFIG_FILE_KEY, ruta;
			//logger.info("mruta: " +mruta);
		
			String mruta = ruta;
			
			File jarPath = new File(Configuracion.class.getProtectionDomain().getCodeSource().getLocation().getPath());
			String jarDirectory = jarPath.getParent();
			logger.info(" propertiesPath- jarDirectory" + jarDirectory);
		
			String fs = File.separator;
			logger.info("File.Separator: " + fs);
			String sepMruta = fs + mruta;
		
			if (new File(jarPath + sepMruta).exists()) {
				logger.info( "load properties from ext dir: " +jarPath +sepMruta);
				in = new FileInputStream(jarPath + sepMruta);
			}else if(new File(jarDirectory + sepMruta).exists()) {
				logger.info(" load properties from ext dir: " + jarDirectory + sepMruta);
				in= new FileInputStream(jarDirectory + sepMruta);
			}else {
				logger.info(" load properties from class loader: " + mruta);
				in=Configuracion.class.getClassLoader().getResourceAsStream(mruta);
			}
			config.load(in);
		}catch(Exception e) {
			logger.error("error leyendo fichero propiedades <" +ruta+">", e);
			//TODO throw
		}finally {
			if(in !=null) {
				try {
					in.close();
				}catch(IOException e) {
					logger.error("Error cerrando fichero propiedades <"+ruta+">", e);
					//TODO throw
				}
			}
		}
	}
	
}
