package br.edu.ifpb.cliente.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifpb.cliente.Cliente;


@WebServlet("/ExcluirCliente")
public class ExcluirClienteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       

    public ExcluirClienteServlet() {
        super();
    }


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		Cliente.apagarCliente(Integer.valueOf(req.getParameter("id")));
		
		res.sendRedirect("ListaCliente");
	}

}
