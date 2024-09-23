<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Rooms</title>
    <link rel="stylesheet" href="CSS/Available.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="navbar">
            <a href="/">Home</a>
            <a href="/AboutUs.jsp">AboutUs</a>
            <a href="/ContactUs.jsp">ContactUs</a>
             <a href="/LogOut.jsp">LogOut</a>
        </div>
    </header>
    <br><br><br><br>
    <main>
        <table class="data-table">
            <tr>
                <th>Id</th>
                <th>Room Number</th>
                <th>Room Type</th>
                <th>Charges</th>
                <th>Availability</th>
                <th>Images</th>
                <th>Booking</th>
                
            </tr>
            <c:forEach var="room" items="${Bdata}">
                <tr>
                    <td>${room.getId()}</td>
                    <td>${room.getRoomNumber()}</td>
                    <td>${room.getRoomType()}</td>
                    <td>${room.getCharges()}</td>
                    <td>${room.isAvailability()}</td>
                    <td><img src="${room.getImage()}" alt="Room Image" width="100" height="75"/></td>
                    <td>
                        <form action="/BookRoomByid">
                            <input type="hidden" value="${id}" name="userid">
                            <input type="hidden" value="${room.getId()}" name="roomid">
                            <button type="submit">Book Now </button>
                        </form>
                    </td>  
                </tr>
            </c:forEach>
        </table>
    </main>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Your Hotel Management System. All Rights Reserved.</p>
    </footer>
</body>
</html>
