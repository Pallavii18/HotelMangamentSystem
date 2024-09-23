<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/addroom.css">
</head>
<body>
  <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <a href="/AddRoom.jsp">Add Rooms</a>
                <a href="/LogOut.jsp">Logout</a>
            </div>
        </nav>
    </header>

    <h2>Add Room</h2>
    <form action="/Insertinfo" method="post">
        <label for="roomNumber">Room Number:</label>
        <input type="text" id="roomNumber" name="roomNumber" required /><br/>

        <label for="roomType">Room Type:</label>
        <select id="roomType" name="roomType" required>
            <option value="" disabled selected>Select Room Type</option>
            <option value="Single">Single</option>
            <option value="Double">Double</option>
            <option value="Ac-Room">Ac-Room</option>
             <option value="Non-Ac-Room">Non-Ac-Room</option>
              <option value="Family">Family</option>
            <option value="Luxery">Luxery</option>
        </select><br/>

        <label for="charges">Charges:</label>
        <input type="number" id="charges" name="charges"  required /><br/>

        <label for="availability">Availability:</label>
        <input type="checkbox" id="availability" name="availability" /><br/>

        <label for="image">Image:</label>
        <input type="text" id="image" name="image"  /><br/>

        

        <div class="button-group">
    <button type="submit">Add Room</button>
    <button type="button" onclick="window.location.href='/RoomReport'">Next</button>
</div>

    </form>
    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>