# jsp-and-servlets-jdbc2-database-connection

### v0.0.1
#### Funciones nuevas:
- Creación de plantillas para la cabecera y el footer con la acción estandard <jsp:include page="..."/>
- Internacionalización, con JSTL (ftm), del index y las plantillas a varios idiomas: español, gallego, inglés, árabe y árabe de Argelia (este último regulinchi porque no encontré un buen traductor)
- Desarrollo de un jsp que liste todos los archivos de un directorio local
- Forms con restricciones que llevan a una página de confirmación

---

### v0.1.0
#### Funcionalidad nueva:
- Creación de un attribute tag wrapper, en la carpeta "tags" dentro de "WEB-INF", con el que hacemos una plantilla o template de nuestro código que se repite en la mayoría de jsp. Ahora todos nuestros archivos jsp pueden usar esta plantilla y dejar de usar la acción estandard <jsp:include page="..."/> con footer.jsp (que lo borramos) y solo usamos un breve script de cabecera.jsp para el parámetro "etiquetaTítulo" cuyo valor cambia según el archivo jsp
