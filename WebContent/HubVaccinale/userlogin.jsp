<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Utente</title>
    <link rel="stylesheet" type="text/css" href="./css/form.css"/>
    <link rel="stylesheet" href="./css/nav.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>
    <script src="./js/genericlogin.js"></script>
</head>
<body>
    <%@ include file="/WEB-INF/jsp/navbar.jsp"%>

    <!-- Login Utente -->
    <form id="vaccineform" action="../loginuser" method="POST">
        <div id="logintab" class="tab">
            <h1>Login utenti</h1>

            <h4>Codice fiscale</h4>
            <p><input name="cf" id="cf" type="text" required="required"></p>
            <h4>Codice prenotazione</h4>
            <p><input name="prencode" id="prencode" type="text" required="required"></p>
        </div>

        <div style="overflow:auto;">
            <div style="float:right;">
                <button type="submit" id="login">Accedi</button>
            </div>
        </div>
    </form>
</body>
</html>