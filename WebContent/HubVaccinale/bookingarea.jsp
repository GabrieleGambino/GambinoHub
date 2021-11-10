<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/form.css"/>
<link rel="stylesheet" type="text/css" href="css/modal2.css"/>
<link rel="stylesheet" href="./css/nav.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Prenotazione vaccino</title>
</head>
<body>
    <%@ include file="/WEB-INF/jsp/navbar.jsp" %>

    <form id="vaccineform">
		<!-- One "tab" for each step in the form: -->
		<div id="0" class="tab" >
		    <h1>Inserisci i tuoi dati anagrafici</h1>

			<h4>Nome</h4>
			<p><input name="name" id="name" type="text" required></p>
			<h4>Cognome</h4>
			<p><input name="surname" id="surname" type="text" required></p>
			<h4>Codice fiscale</h4>
			<p><input name="cf" id="cf" type="text" required></p>
			<h4>Comune di residenza</h4>
			<p><input name="residance" id="residence" type="text" required></p>
			<h4>Indirizzo e Numero civico</h4>
			<p><input name="street"id= "street" type="text" required></p>
			<h4>Telefono</h4>
			<p><input name="phone" id="phone" type="tel" required pattern="[0-9]{9}|[0-9]{10}"></p>
	    </div>
	  
		<div id="1" class="tab">
			<h1>Quadro clinico</h1>

			<h4>Categoria</h4>
			<select name="cat" id="cat" required> <option value = "1">Seleziona</option></select>

			<h4>Specifica</h4>
			<select name="spec" id="spec" required><option value = "1">Seleziona</option></select>

			<h4>Patologia</h4>
			<select name="pat" id="pat" required><option value = "1">Seleziona</option></select>

			<h4>Data</h4>
			<p><input name="date" id="date" type="date" required></p>

			<h4>Orario</h4>
			<p><input name="orario" id="time" type="time" required pattern="[0-9]{2}:[0-9]{2}"></p>

	    </div>
	    
		<div id="2" class="tab">
		    <h1>Conferma</h1>
		    
			<h3>Ricontrolla i dati inseriti qui sotto e clicca sul pulsante "Conferma" per confermare la prenotazione.</h3>
		</div>
		
		<div style="overflow:auto;">
			<div style="float:right;">
				<button type="button" id="prevBtn" onclick="nextPrev(-1)">Indietro</button>
				<button type="button" id="nextBtn" onclick="nextPrev(1)">Avanti</button>
			</div>
		</div>
		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align:center;margin-top:40px;">
			<span class="step"></span>
			<span class="step"></span>
			<span class="step"></span>
		</div>
	</form>
	<%@ include file="/WEB-INF/jsp/qrcode.jsp" %>
	<script src="./js/qrcode.min.js"></script>
 	<script src="./js/booking.js"></script>
    <script src="./js/reservationtime.js"></script>
    <script src="./js/disease.js"></script>
</body>
</html>