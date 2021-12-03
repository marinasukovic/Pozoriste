<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ispis podataka</title>
</head>
<body>
<c:if test="${!empty uloge }">
<table border="1">
<tr>
<th>Ime glumca</th>
<th>Prezime glumca</th>
<th>Naziv predstave</th>
<th>Trajanje predstave</th>
<th>Opis predstave</th>
<th>Naziv uloge </th>
</tr>
<tr>
<c:forEach var="u" items="${uloge }">
<td>${u.glumac.ime }</td>
<td>${p.glumac.prezime }</td>
<td>${u.predstava.naziv }</td>
<td>${u.predstava.trajanje }</td>
<td>${u.predstava.opis }</td>
<td>${u.naziv }</td>

</tr>

</c:forEach>
</c:if>
</body>
</html>