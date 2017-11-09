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
            String idPartida1= request.getParameter("idpartida1");
            Partida partida= GestorPartidas.getPartidaPorId(idPartida1);
            String jugador1= partida.getJugadorA();
            String jugada1= partida.getJugadaA();
            String jugador2= request.getParameter("nombreJugador2");
            String jugada2= request.getParameter("jugada2");
            String ganador= GestorPartidas.completarPartida(request.getParameter("idpartida1"), jugador2, jugada2);   
        %>
        
        <h1>El ganador es: <%=ganador%></h1>
        <h2>Usted lleva ganadas: <%= GestorPartidas.ganadasPorUsuario(ganador)%> partidas.</h2>
        Jugador1:<%=jugador1%>, jugada1 <b><%=jugada1%></b><br/>
        Jugador2:<%=jugador2%>, jugada2 <b><%=jugada2%></b><br/>
        <br/>
        <a href="jugarContraLaMaquina3.jsp">
            Inicio
        </a>
        
    </body>
</html>
