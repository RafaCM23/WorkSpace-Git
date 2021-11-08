

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class ServletPedido
 */
@WebServlet("/ServletPedido")
public class ServletPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletPedido() {
        super();
    }

	//Hay que hacer server de login para autenticar usuario
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(false);
		PrintWriter print = response.getWriter();
		if(sesion.getAttribute("usuario")==null|| sesion.getAttribute("usuario").equals("nologeado")) {
			String url = "HTML/index.jsp";
			response.sendRedirect(url);
			
		}
		
		
		
		int cant1=Integer.parseInt(request.getParameter("cantidad1"));
		int cant2=Integer.parseInt(request.getParameter("cantidad2"));
		int cant3=Integer.parseInt(request.getParameter("cantidad3"));
		int cant4=Integer.parseInt(request.getParameter("cantidad4"));
		int cant5=Integer.parseInt(request.getParameter("cantidad5"));
		int cant6=Integer.parseInt(request.getParameter("cantidad6"));
		
		PedidoBean pedido= new PedidoBean();
		ProductoBean producto1 = new ProductoBean("lap1",850.0);
		ProductoBean producto2 = new ProductoBean("lap2",1250.0);
		ProductoBean producto3 = new ProductoBean("lap3",2500.0);
		ProductoBean producto4 = new ProductoBean("pc1",750.0);
		ProductoBean producto5 = new ProductoBean("pc2",1100.0);
		ProductoBean producto6 = new ProductoBean("pc3",2000.0);
		
		
		if (cant1>0 && cant1<11) {pedido.anadirProducto(producto1, cant1);}
		if (cant2>0 && cant2<11) {pedido.anadirProducto(producto2, cant2);}
		if (cant3>0 && cant3<11) {pedido.anadirProducto(producto3, cant3);}
		if (cant4>0 && cant4<11) {pedido.anadirProducto(producto4, cant4);}
		if (cant5>0 && cant5<11) {pedido.anadirProducto(producto5, cant5);}
		if (cant6>0 && cant6<11) {pedido.anadirProducto(producto6, cant6);}
		//Productos -> Pc nv1 750€ Pc nv2 1100€ Pc nv3 2000€
		//          -> laptop1 850€ laptop2 1250€ lapto3 2500€
		Comparator<ProductoBean> comparador = new Comparator<ProductoBean>() {
			@Override
			public int compare(ProductoBean o1, ProductoBean o2) {
				
				return o1.getNombre().compareTo(o2.getNombre());
			}
		};
		
		List<ProductoBean> keys = new ArrayList<ProductoBean>(pedido.getProductos().keySet());
		Collections.sort(keys,comparador);
		
		
	
		
		imprimir(pedido,keys,response);
		
	}
		
		
		
		
		protected void imprimir(PedidoBean order, List<ProductoBean> ordkeys, HttpServletResponse response) {
			
			
			PrintWriter print;
			try {
				print = response.getWriter();
				print.println("<!DOCTYPE html>\n"
						+ "			<html lang=\"es\">\n"
						+ "			<head>\n"
						+ "			    <meta charset=\"UTF-8\">\n"
						+ "			    <title>· CHECKOUT ·</title>\n"
						+ "			</head>\n"
						+ "			<link rel=\"stylesheet\" href=\"HTML/pedido.css\">\n"
						+ "			<body>\n"
						+ "			    <h2>Detalles del pedido</h2>\n"
						+ "			    <div class=\"contenedor\">\n"
						+ "			       \n"
						+ "			    </div>\n");
				
				print.println("<div class=\"resumen\">");
					
				 for (ProductoBean p : ordkeys) {
					print.println(p.getNombre()+" x "+order.getProductos().get(p)+"<br>");
					}
				print.println( "</div>\n   <div class=\"formulario\">\n"
						+ "			        <form action=\"/url/\" method=\"POST\">\n"
						+ "			        <label for=\"codPost\">*Cod Postal:</label><input type=\"number\" name=\"codPost\" id=\"codPost\" min=\"10000\" max=\"99999\" placeholder=\"ej: 41300...\">\n"
						+ "			        <br>\n"
						+ "			        <label for=\"calle\">*Calle:</label><input type=\"text\" name=\"calle\" id=\"calle\" placeholder=\"Calle/via/avenida\">\n"
						+ "			        <label for=\"numero\">*num:</label><input type=\"number\" name=\"numero\" id=\"numero\" min=\"0\" max=\"150\" placeholder=\"ej: 99\">\n"
						+ "			        <br>\n"
						+ "			        <label for=\"piso\">*Puerta:</label><input type=\"text\" name=\"numero\" id=\"piso\" placeholder=\"ej:2º C\" size=\"3\" maxlength=\"4\">\n"
						+ "			        <br>\n"
						+ "			        <pre><h2>         Metodos de pago</h2></pre>\n"
						+ "			        <input type=\"radio\" name=\"metodoPago\" id=\"pagoTarjeta\">Tarjeta</input>\n"
						+ "			        <input type=\"radio\" name=\"metodoPago\" id=\"pagoContra\">Contrareembolso</input>\n"
						+ "			        <input type=\"radio\" name=\"metodoPago\" id=\"pagoCrypto\">Crypto</input>\n"
						+ "			        <br>\n"
						+ "			        <button type=\"submit\">Proceder</button>\n"
						+ "\n"
						+ "			    </form>\n"
						+ "			    </div>\n"
						+ "			    \n"
						+ "\n"
						+ "			    \n"
						+ "			    \n"
						+ "			</body>\n"
						+ "			</html>");
				
				
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
			
					
		}
		
					
		
//		ProductoBean[] ordenada= (ProductoBean[])keys.toArray();
//		request.setAttribute("listaOrdenada", ordenada);
//		
//		RequestDispatcher envio=request.getRequestDispatcher("pedido.jsp");
//		envio.forward(request, response);
//	
		
//		PrintWriter out = response.getWriter();
//        out.println ("<!DOCTYPE HTML PUBLIC \""+
//                     "-//W3C//DTD HTML 4.0 " + 
//                     "Transitional//EN\">");
//        out.println ("<HTML>");
//        out.println ("<BODY>");
//        List<ProductoBean> keys = new ArrayList<ProductoBean>(pedido.getProductos().keySet());
//        Collections.sort(keys,comparador);
//        for (ProductoBean p : keys) {
//			out.println(p.getNombre()+" x "+pedido.getProductos().get(p)+"<br>");
//		}
//        out.println ("</BODY>");
//        out.println ("</HTML>");
//        
       
		
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
