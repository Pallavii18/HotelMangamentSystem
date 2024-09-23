<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Details</title>
<link rel="stylesheet" href="CSS/allrooms.css">

</head>
<body>

     <table class="data-table" border="2">
        <tr>
        	<th>ID</th>
            <th>Room Number</th>
            <th>Room Type</th>
            <th>Charges</th>
            <th>Availability</th>
            <th>Image</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
    <c:forEach var="room" items="${data}">
            <tr>
            	<td>${room.getId()}</td>
                <td>${room.getRoomNumber()}</td>
                <td>${room.getRoomType()}</td>
                <td>${room.getCharges()}</td>
                <td>${room.isAvailability()}</td>
                <td><img src="${room.image}" alt="Room Image" width="100" height="75"/></td>
                <td><a href="<c:url value='/${room.id}'/>">Update</a></td>
				<td><a href="<c:url value='/delete/${room.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>  
    </table>
<button type="button" onclick="window.location.href='/AddRoom.jsp'">Back</button>

</body>
</html>
