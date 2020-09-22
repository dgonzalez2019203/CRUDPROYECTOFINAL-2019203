<%-- 
    Document   : listar
    Created on : 11/09/2020, 06:48:41 PM
    Author     : Barker
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
           <h1>Datos de La Entidad Persona</h1> 
           <a href="Controlador?accion=add">Agregar Registro</a>
           <br><br>
           <table border="1">
               <thead>
                  
                   <tr>
                       <td>Código Persona</td>
                       <td>DPI</td>
                       <td>Nombres</td>
                       <td>Acciones</td>
                   </tr>                       
               </thead>
                <%
                       PersonaDAO dao = new PersonaDAO();
                       List<Persona> listaPersona = dao.listar();
                       Iterator<Persona> iterator= listaPersona.iterator();
                       Persona per = null;
                       while (iterator.hasNext()){
                           per = iterator.next();
                       
                       %>
               <tbody>
                   <tr>
                       <td><%= per.getCodigoPersona() %></td>
                       <td><%= per.getDPI() %></td>
                       <td><%= per.getNombrePersona() %></td>
                       <td>
                           <a href="Controlador?accion=editar&codigoPersona=<%=per.getCodigoPersona()%>">Editar</a>
                           <a href="Controlador?accion=eliminar&codigoPersona=<%=per.getCodigoPersona()%>">Eliminar</a>
                       </td>
                   </tr>
                    <% }%>
               </tbody>
           </table>
        </div>
    </body>
</html>
