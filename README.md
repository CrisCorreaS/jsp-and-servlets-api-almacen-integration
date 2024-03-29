# jsp-and-servlets-api-almacen-integration
![Badge Finalizado](https://img.shields.io/badge/STATUS-FINALIZADO-violet)
<img align="right" alt="License MIT" src="https://img.shields.io/badge/LICENSE-MIT-green" /> <br/>
<img alt="java" src="https://img.shields.io/badge/-Java-EC2023?style=flat-square&logo=openjdk&logoColor=white" />
<br/>
<br/>
El repositorio engloba parte de un proyecto realizado durante abril y mayo de 2023 en mis prácticas. Esta es la parte de modelo-vista-controlador que integra la API del almacén que está en el repositorio api-almacen-jdbc2-database-connection.

---

### v0.0.1
#### Funciones nuevas:
- Creación de plantillas para la cabecera y el footer con la acción estandard <jsp:include page="..."/>
- Internacionalización, con jstl (ftm), del index y las plantillas a varios idiomas: español, gallego, inglés, árabe y árabe de Argelia (este último regulinchi porque no encontré un buen traductor)
- Desarrollo de un jsp que liste todos los archivos de un directorio local
- Forms con restricciones que llevan a una página de confirmación

---

### v0.1.0
#### Funcionalidad nueva:
- Creación de un attribute tag wrapper, en la carpeta "tags" dentro de "WEB-INF", con el que hacemos una plantilla o template de nuestro código que se repite en la mayoría de jsp. Ahora todos nuestros archivos jsp pueden usar esta plantilla y dejar de usar la acción estandard <jsp:include page="..."/> con footer.jsp (que lo borramos) y solo usamos un breve script de cabecera.jsp para el parámetro "etiquetaTítulo" cuyo valor cambia según el archivo jsp

---

### v0.2.0
#### Funcionalidad nueva:
- Creación de una página personalizada para el error 404, que le indica al usuario si un enlace está roto, defectuoso o que ya no existe y que, por lo tanto, no es posible navegar por él.
- Desarrollo de un error handler para gestionar otro tipo de errores
