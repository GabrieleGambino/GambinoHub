<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,400,500,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <meta charset="UTF-8">
    <title>Hub Vaccinale Gambino</title>
</head>

<link rel="stylesheet" href="./css/nav.css"/>
<link rel="stylesheet" href="./css/home.css"/>
<body>
    <%@ include file="/WEB-INF/jsp/navbar.jsp" %>

    <div class="dashboard">

        <div class="card positivi">
            <div class="header">
                <p>Attuali Positivi</p>
            </div>
            <div class="card-container">
                <p id="attuali"></p>
                <div class="incrementi">
                    <p>Incremento</p>
                    <p id="incremento-positivi"></p>
                </div>
            </div>
        </div>

        <div class="card guariti">
            <div class="header">
                <p>Dimessi/Guariti</p>
            </div>
            <div class="card-container">
                <p id="guariti"></p>
                <div class="incrementi">
                    <p>Incremento</p>
                    <p id="incremento-guariti"></p>
                </div>
            </div>
        </div>

        <div class="card deceduti">
            <div class="header">
                <p>Deceduti</p>
            </div>
            <div class="card-container">
                <p id="deceduti"></p>
                <div class="incrementi">
                    <p>Incremento</p>
                    <p id="incremento-deceduti"></p>
                </div>
            </div>
        </div>

        <div class="card totali">
            <div class="header">
                <p>Totale Casi</p>
            </div>
            <div class="card-container">
                <p id="totali"></p>
                <div class="incrementi">
                    <p>Incremento</p>
                    <p id="incremento-totali"></p>
                </div>
            </div>
        </div>

    </div>

    <div class="table-list">
        <table id="regions">
            <tr>
                <th>Regione</th>
                <th>Totali</th>
                <th>Attuali</th>
                <th>Incremento</th>
            </tr>
        </table>
    </div>
</body>
<script src="js/home.js"></script>
</html>