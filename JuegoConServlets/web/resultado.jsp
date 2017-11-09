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
            String jugador1= request.getParameter("jugador1");
            String jugada1= request.getParameter("jugada1");
            String jugador2= request.getParameter("jugador2");
            String jugada2= request.getParameter("jugada2");
            String ganador= GestorPartidas.completarPartida(request.getParameter("idpartida1"), jugador2, jugada2);   
        %>
        
        <h1><%=ganador%></h1>
        Jugador1 Humano:<%=jugador1%>,jugada1 <b><%=jugada1%></b><br/>
        Jugador2 Humano:<%=jugador2%>,jugada2 <b><%=jugada2%></b><br/>
        
    </body>
</html>
