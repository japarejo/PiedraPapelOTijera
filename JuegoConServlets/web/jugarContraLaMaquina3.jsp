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
        
        Partidas creadas:
        <ul>
            <%for(Partida opcion:GestorPartidas.getComenzadas()){%>
                <li><%=opcion.getFechaCreacion()%>, <%=opcion.getJugadorA()%>. 
                    <a href="completarPartida.jsp?id=<%=opcion.getId()%>">
                         Completar partida
                    </a>
                    
                </li>
            <%}%>
        </ul>
        <hr>
        <p>
            <form action="/crearPartida.jsp">
                <label for="nombreJugador">Nombre:</label><input name="nombreJugador1" required> <br/>
                <label for="jugada">Jugada:</label><br/>
                <input type="radio" name="jugada1" value="PIEDRA" required>PIEDRA<br/>
                <input type="radio" name="jugada1" value="PAPEL">PAPEL<br/>
                <input type="radio" name="jugada1" value="TIJERAS">TIJERA<br/>
                <br/>
                <input type="submit" value="Crear partida!">
                
            </form>
        </p>
    </body>
</html>