<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>News Search</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilo.css"/>
        <style type="text/css">
            span {
                display: inline-block;
                width: 200px;
                text-align: left;
            }
        </style>
    </head>
    <body>
        <div class="quadrado mt-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Pesquisa de Notícias</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Palavra-chave: </span><span>${pv.palavra}</span></h6>
                    <p class="card-text">Total de ocorrências: </span><span>${news.totalResults}</span</p>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-5 m-3 container-fluid">
            <c:forEach items="${news.articles}" var="art">
                <div class="col mt-2">
                    <div class="card">
                        <img src="${art.urlToImage}" class="card-img-top" alt="imagem sobre a notícia">
                        <div class="card-body">
                            <h5 class="card-title">${art.title}</h5>
                            <p class="card-text">${art.content}</p>
                        </div>
                        <div class="card-footer">
                            <a href="${art.url}" class="card-link">Link da matéria</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
