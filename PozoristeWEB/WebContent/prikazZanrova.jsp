<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dobrodosli u pozoriste</title>
</head>
<body>
<jsp:useBean id="zanroviObj" class="beans.ZanrBean" scope="session">
<form action="/PozoristeWEB/prikazZanrovaServlet" method="get">

Izaberi zanr predstave:
<select name="comboZanrovi">

<c:forEach var="z" items="${zanroviObj.zanrovi }">
<option value="${z.idZanr }">${z.naziv }</option>
</c:forEach>

</select><br>
<input type="submit" value="Prikazi predstave za izabrani zanr"><br>

</form>
</jsp:useBean>
<c:if test="${!empty predstave }">
<table border="1">
<tr>
<th>Naziv predstave</th>
<th>Trajanje predstave</th>
<th>Opis predstave</th>
<th>Ime rezisera</th>
<th>Prezime rezisera</th>
<th>Uloge</th>
</tr>
<tr>
<c:forEach var="p" items="${predstave }">
<td>${p.naziv }</td>
<td>${p.trajanje }</td>
<td>${p.opis }</td>
<td>${p.reziser.ime }</td>
<td>${p.reziser.prezime }</td>
<td><a href="/PozoristeWEB/GlumciUlogeServlet?idPredstava=${idPredstava }">Prikazi</a></td>
</tr>

</c:forEach>
</c:if>

</body>
</html>