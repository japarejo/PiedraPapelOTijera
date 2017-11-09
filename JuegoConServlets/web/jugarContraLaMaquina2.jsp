<%@page import="es.ayesa.cursoweb.GestorPartidas"%>
<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Piedra, Papel o Tijeras!</title>
    </head>
    <body>
       <% 
            String jugador= request.getParameter("nombreJugador");
            String jugada= request.getParameter("jugada");
            String jugadaMaquina= Partida.generarJugadaAleatoria();
            String nombreMaquina= "T1000";
            Partida p= new Partida(jugador,jugada,nombreMaquina,jugadaMaquina);
            String[] posiblesJugadas={"PIEDRA", "PAPEL", "TIJERA"};
            

    
        %>

        <h1><%=p.resultado()%></h1>
        Jugador Humano:<%=jugador%>,jugada <b><%=jugada%></b><br/>
        Máquina:<%=nombreMaquina%>,jugada <b><%=jugadaMaquina%></b><br/>
        <% if(p.getGanador().equals(jugador)){%>
            <h2>No me creo que le hayas ganado a <%=nombreMaquina%></h2>
        <%}%>
        
        Las opciones son:
        <ul>
            <%for(String opcion:posiblesJugadas){%>
            <li><%=opcion%>
            <%}%>
        </ul>
    </body>
</html>
