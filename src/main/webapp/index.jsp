<%-- 
    Document   : index
    Created on : 2 abr. 2024, 18:50:08
    Author     : Rizen 3®
--%>
<%--Univ: JOAQUIN COARITI ALIAGA RU: 200050816--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Persona"%>
<%
    if(session.getAttribute("lista")==null){
        ArrayList<Persona> aux = new ArrayList();
        session.setAttribute("lista", aux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="max-width: 100%;max-heigth: 100%; margin: auto; background: red " >
        <div style="display: grid; place-content:center; ">
        <ul style="width: 100%; background-color: orange; list-style: none; padding:2rem 1rem; border: 3px solid blue; border-radius: 3rem;  ">
            <li>Primer Parcial TEM-742</li>
            <li>Nombre: Joaquin Coariti Aliaga</li>
            <li>Carnet: 13443741 lp</li>
        </ul>
         
        <h1 style="  font-size: 3em; background: linear-gradient(to bottom, green, green,#000000);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">Registro de Calificaciones</h1>
        <a href="servRegistro?op=create">Nuevo Registro</a>
        <table border="1" cellspacing="0">
        
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Primer Parcial</th>
                    <th>Segundo Parcial</th>
                    <th>Tercer Parcial</th>
                    <th colspan="2">Operaciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Persona persona : lista) {
                     %>
                         <tr>
                            <td><%=persona.getId()%></td>
                            <td><%=persona.getNombre()%></td>
                            <td><%=persona.getpParcial()%></td>
                            <td><%=persona.getsParcial()%></td>
                            <td><%=persona.gettParcial()%></td>
                            <td><a href="servRegistro?op=update&id=<%=persona.getId()%>">Modificar</a></td>
                            <td><a href="servRegistro?op=delete&id=<%=persona.getId()%>">Eliminar</td>
                        </tr>
                    <%
                    }
                %>
            </tbody>
        </table>
        </div>
    </body>
</html>
