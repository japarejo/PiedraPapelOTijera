<%@page import="es.ayesa.cursoweb.Partida"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
            <%String idpartida1= request.getParameter("id");%>
            
            <form action="/resultado.jsp">
                <input type="hidden" name="idpartida1" value="<%=idpartida1%>">
                <label for="nombreJugador">Nombre:</label><input name="nombreJugador2" required> <br/>
                <label for="jugada">Jugada:</label><br/>
                <input type="radio" name="jugada2" value="PIEDRA" required>PIEDRA<br/>
                <input type="radio" name="jugada2" value="PAPEL">PAPEL<br/>
                <input type="radio" name="jugada2" value="TIJERAS">TIJERA<br/>
                <br/>
                <input type="submit" value="Jugar!">
                
            </form>
        </p>
        
    </body>
</html>
