package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1 procesamos los parametros

        //2. Creamos los JavaBeans
        Rectangulo rec = new Rectangulo(3, 6);

        //3. Agregamos el JavaBean a algun alcance
        request.setAttribute("mensaje", "Saludos desde el Servlet");
//        la variable mensaje la busamos despues en el jsp para mostrar esta informacion al cliente
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("rectangulo", rec);
        
        //4. redireccionar a la vista seleccionada
        //obtengo la vista a la cual se hace el redireccionamiento
        RequestDispatcher rd = request.getRequestDispatcher("vista/desplegarVariables.jsp");
        //una ves tengamos el rd apuntando a la vista a redirigir
        //propagamos los obejtos request y response a este jsp
        rd.forward(request, response);
        
        
    }
    
}
