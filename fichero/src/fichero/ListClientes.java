package fichero;

import java.io.IOException;
import java.util.List;

import org.feliz.almacen.api.MotorApiServicioNegocio;
import org.slf4j.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListClientes")
public class ListClientes extends HttpServlet{
	
	private void doProc (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Logger logger = LoggerFactory.getLogger (ListClientes.class) ;

		MotorApiServicioNegocio mApi = new MotorApiServicioNegocio ();
		List<String> allClientes=null;

		try {
			allClientes = mApi.getListaClientes();
		} catch (Exception e) {

			logger.error ("No se pudo obtener el listado de clientes");
		}

		request .setAttribute ("IClientes", allClientes);
		RequestDispatcher rd = request.getRequestDispatcher("listClientes.jsp");

		String pFormato = request.getParameter ("formato");
		if (null != pFormato && pFormato.equals("w3c")) {
		rd = request .getRequestDispatcher ("listClientesFormato.jsp");
		}

		rd. forward (request, response);

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO
		doProc(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO
		doProc(request, response);
	}
	

}
