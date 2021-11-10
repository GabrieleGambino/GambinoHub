<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
<%
    
    Object objact = request.getSession().getAttribute("active");
    Object objlog = session.getAttribute("logged");
    String active = "";
    boolean logged = false;

    if (objact != null)
        active = objact.toString();
    if (objlog != null)
        logged = (boolean) objlog;

    System.out.println(active + " " + logged);
    String basepath = request.getContextPath();
%> -->
<div class="navbar">
    <a id="logout" href="<%=basepath%>/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
    <a id="private" href="<%=basepath%>/HubVaccinale/privatelogin.jsp"><i class="fas fa-user-md"></i> Area riservata</a>
    <a id="user" href="<%=basepath%>/HubVaccinale/userlogin.jsp"><i class="far fa-calendar-alt"></i> Gestisci pronotazione</a>
    <a id="booking" href="<%=basepath%>/HubVaccinale/bookingarea.jsp"><i class="fas fa-syringe"></i> Prenotazione vaccino</a>
    <a id="home" href="<%=basepath%>/HubVaccinale/home.jsp"><i class="fas fa-clinic-medical"></i> Home</a>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<script>
    $(document).ready(function(){
        $("#logout").hide();
        var path = window.location.pathname;

        <%if(logged) {%>
        $("#logout").show();
        <%if(active == "booking") {%>
        $("#private").hide();
        $("#booking").hide();
        $("#user").addClass("active");
        <%}%>
        <%if(active == "reserved") {%>
        $("#user").hide();
        $("#booking").hide();
        $("#private").addClass("active");
        <%}%>
        <%}%>

        if(path == "/GambinosHub/HubVaccinale/privatelogin.jsp")
            $("#private").addClass("active");
        else if(path == "/GambinosHub/HubVaccinale/userlogin.jsp")
            $("#user").addClass("active");
        else if(path == "/GambinosHub/HubVaccinale/bookingarea.jsp")
            $("#booking").addClass("active");
        else if(path == "/GambinosHub/HubVaccinale/home.jsp")
            $("#home").addClass("active");
    });
</script>