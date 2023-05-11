package fichero;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ListFiles")
public class ListFiles extends HttpServlet{
	
	private void doProc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String ROOT_FILE_PATH="C:\\jrep\\tmp\\listaFicheirosProbarApp";
		File f=new File(ROOT_FILE_PATH);

		RequestDispatcher rd=request.getRequestDispatcher ("listFiles.jsp");

		File[] allsubFiles=f.listFiles();
		request .setAttribute ("Files", allsubFiles);

		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO
		doProc (request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO
		doProc (request, response);
	}

}
