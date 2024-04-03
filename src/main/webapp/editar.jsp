<%-- 
    Document   : index
    Created on : 2 abr. 2024, 18:50:08
    Author     : Rizen 3®
--%>

<%--Univ: JOAQUIN COARITI ALIAGA RU: 200050816--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Persona"%>
<%
    Persona person =(Persona) request.getAttribute("persona");
    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("lista");
    int lastId=0;
    if(request.getAttribute("lastId") !=null){
        lastId = Integer.parseInt(request.getAttribute("lastId").toString());
    }
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="max-width: 100%;max-heigth: 100%; margin: auto; background: red">
        <div style="display: grid; place-content:center; ">
            <ul style="width: 100%; background-color: orangered; list-style: none; padding:2rem 1rem; border: 3px solid blue; border-radius: 3rem;  ">
                <li>Primer Parcial TEM-742</li>
                <li>Nombre: Joaquin Coariti Aliaga</li>
                <li>Ru: 200050816</li>
                <li>Carnet: 13443741 lp</li>
            </ul>
            <h1  style="  font-size: 3em; background: linear-gradient(to bottom, green, green,#000000);-webkit-background-clip: text;-webkit-text-fill-color: transparent;">Registro de Calificaciones</h1>
            <form action="servRegistro" method="post">
                <fieldset>
                    <legend>Datos Personales</legend>
                    <label>Id</label><br>
                    <input type="text" name="id" value=<%=(person != null ? person.getId():lastId+1)%> readonly /><br>
                    <label>Nombre</label><br>
                    <input type="text" name="nombre" placeholder="Joaquin" value=<%=(person != null ? person.getNombre():"")%> ><br>
                    <label>Primer Parcial</label><br>
                    <input type="number" name="pParcial" placeholder="30" onchange="validarValor(this)" value=<%=(person != null ? person.getpParcial():"")%> ><br>
                    <label>Segundo Parcial</label><br>
                    <input type="number" name="sParcial" placeholder="30" onchange="validarValor(this)" value=<%=(person != null ? person.getsParcial():"")%> ><br>
                    <label>Tercer Parcial</label><br>
                    <input type="number" name="tParcial" placeholder="30" onchange="validarValor(this)" value=<%=(person != null ? person.gettParcial():"")%> ><br>
                    <button type="submit">Aceptar</button>
                </fieldset>
            </form>
        </div>
        <script>
            function validarValor(input) {
                // Obtener el valor ingresado en el campo de entrada
                var valor = input.value;

                // Verificar si el valor está dentro del rango de 0 a 30
                if (valor < 0 || valor > 30) {
                    // Si el valor está fuera de rango, establecerlo a 0
                    input.value = 0;
                    alert("El valor debe estar entre 0 y 30.");
                }
            }
        </script>
    </body>
</html>
