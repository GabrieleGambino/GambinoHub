<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Area riservata</title>
<link rel="stylesheet" type="text/css" href="./css/form.css"/>
<link rel="stylesheet" href="./css/nav.css"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>
<script src="./js/genericlogin.js"></script> 

</head>
<body>
    <%@ include file="/WEB-INF/jsp/navbar.jsp" %>

    <form id="vaccineform" action="../privatelogin" method="POST">
        <div id="reservedtab" class="tab">
            <h1>Area riservata</h1>

            <h4>Email</h4>
            <p><input name="email" id="email" type="email" required></p>
            <h4>Password</h4>
            <p><input name="password" id="password" type="password" required></p>
        </div>

        <div style="overflow:auto;">
            <div style="float:right;">
                <button type="submit">Accedi</button>
            </div>
        </div>
    </form>
</body>
</html>