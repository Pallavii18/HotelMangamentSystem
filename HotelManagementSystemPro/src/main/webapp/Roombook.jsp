<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room Booking</title>
<link rel="stylesheet" href="/CSS/Roombook.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<script>
function calculateCharges() {
    var roomType = document.getElementById('customerRommtype').value; // Updated the ID to match the form input
    var checkInDate = new Date(document.getElementById('checkInDate').value);
    var checkOutDate = new Date(document.getElementById('checkOutDate').value);

    if (checkInDate && checkOutDate && checkOutDate > checkInDate) {
        var nights = Math.ceil((checkOutDate - checkInDate) / (1000 * 60 * 60 * 24));

        var rates = {
            "Single": 1500.0,
            "Double": 3000.0,
            "Ac-Room": 4500.0,
            "Non-Ac Room": 2500.0,
            "Family": 6000.0,
            "Luxury": 5500.0
        };

        var rate = rates[roomType] || 0;
        var totalCharge = rate * nights;

        document.getElementById('totalCharge').innerText = 'Total Charge: $' + totalCharge;
        document.getElementById('totalChargeHidden').value = totalCharge;
    } else {
        document.getElementById('totalCharge').innerText = 'Total Charge: $0';
        document.getElementById('totalChargeHidden').value = 0;
    }
}

</script>
</head>
<body>
<header>
    <nav>
        <div class="navbar">
            <a href="/">Home</a>
            <a href="/userLogin">User Login</a>
            <a href="/adminLogin">Admin Login</a>
            <a href="/ContactUs.jsp">Contact Us</a>
            <a href="/AboutUs.jsp">About Us</a>
        </div>
    </nav>
</header>

<main>
    <center><h2>Room Booking</h2></center>
   <form action="/Payment" method="post">
   <input type="hidden" name="userid" value="${user.getUserId()}">
    <input type="hidden" name="roomid" value="${addroom.getId()}">
   
    <label for="customerName">Name:</label>
    <input type="text" id="customerName" name="customerName"  value="${user.getUserName()}"required>
    <br>
    <label for="customerEmail">Email:</label>
    <input type="email" id="customerEmail" name="customerEmail"  value="${user.getEmail()}"required>
    <br>
    <label for="roomType">Room Type:</label>
     <input type="text" id="customerRommtype" name="customerRommtype"  value="${addroom.getRoomType()}"required>
    <br>
     <label for="roomType">Room Number:</label>
     <input type="text" id="customerRoomnumber" name="customerRoomnumber"  value="${addroom.getRoomNumber()}"required>
    <br>
     <label for="roomType">Room Charges</label>
     <input type="text" id="customerRoomCharges" name="customerRoomCharges"  value="${addroom.getCharges()}"required>
    <br>
    <label for="checkInDate">Check-In Date:</label>
    <input type="date" id="checkInDate" name="checkInDate"  onchange="calculateCharges()" required>
    <br>
    <label for="checkOutDate">Check-Out Date:</label>
    <input type="date" id="checkOutDate" name="checkOutDate" onchange="calculateCharges()" required>
    <br>
    
    <p id="totalCharge">Total Charge: $0</p>
    <input type="hidden" id="totalChargeHidden" name="totalChargeHidden">
    <br>
    <button type="submit">Proceed to Payment</button>
</form>
</main>
<br><br><br><br><br>
<footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>