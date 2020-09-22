<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Editar</title>
    </head>
    <body>
        
        <div>
            <div>
            <%PersonaDAO personaDao = new PersonaDAO();
                int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                Persona persona = (Persona)personaDao.list(codPersona);
            %>
            <h1>Editar Persona</h1>
            <br>
            <form action="Controlador">
                <strong>
                DPI
                </strong>
                <input type="text" name="txtDPI" value="<%= persona.getDPI()%>"><br><br>
                <strong>
                Nombre
                </strong>
                <input type="text" name="txtNombre" value="<%= persona.getNombrePersona()%>"><br><br>    
                <input type="hidden" name="txtCodigoPersona" value="<%= persona.getCodigoPersona()%>"><br><br>  
                <input type="submit" name="accion" value="Actualizar"><br>
            </form>
            </div>
        </div>
        
    </body>
</html>
