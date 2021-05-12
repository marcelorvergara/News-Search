<%--
    Document   : search
    Created on : 11 de mai de 2021, 20:24:36
    Author     : marcelo
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>News Search</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="quadrado mt-4">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Pesquisa de Notícias</h5>
                    <h6 class="card-subtitle mb-2 text-muted">API News - newsapi.org</h6>
                    <form:form action="result" method="post" modelAttribute="pv">
                        <form:label path="palavra" class="form-label">Palavra-chave:</form:label>
                        <form:input path="palavra" class="form-control"/><br/>
                        <br>
                        <form:button class="btn btn-primary">Enviar</form:button>
                    </form:form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    </body>
</html>

