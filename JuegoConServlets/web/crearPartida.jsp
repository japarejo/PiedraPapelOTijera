<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
            String jugador= request.getParameter("nombreJugador1");
            String jugada= request.getParameter("jugada1");
           
            GestorPartidas.crearPartida(jugador,jugada);
            request.getRequestDispatcher("/jugarContraLaMaquina3.jsp").forward(request, response);
        %>
        
        
    </body>
</html>
