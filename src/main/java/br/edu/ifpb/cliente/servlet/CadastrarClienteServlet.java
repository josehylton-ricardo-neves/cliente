package br.edu.ifpb.cliente.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifpb.cliente.Cliente;


@WebServlet("/cadastrarCliente")
public class CadastrarClienteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       

    public CadastrarClienteServlet() {
        super();
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	
    	if(req.getParameter("nome") == "" || req.getParameter("email") == "" || req.getParameter("telefone") == "") {
    		throw new RuntimeException("insira todos os campos");
    	}

    	Cliente.addCliente(new Cliente.Builder().setNome(req.getParameter("nome"))
    	    	.setEmail(req.getParameter("email"))
    	    	.setTelefone(req.getParameter("telefone"))
    	    	.build()
    	    	);

    	RequestDispatcher rd = req.getRequestDispatcher("/cliente-cadastrado.jsp");
		req.setAttribute("nomeCliente", req.getParameter("nome"));
		rd.forward(req, res);
    }

}
