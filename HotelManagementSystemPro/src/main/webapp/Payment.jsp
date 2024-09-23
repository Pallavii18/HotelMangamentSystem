<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Confirmation</title>
<link rel="stylesheet" href="/CSS/Payment.css">
<script>
    function showAlert() {
        alert("Payment successfully");
    }
</script>
</head>
<body>
    <form action="/paymentSuccess" method="post" onsubmit="showAlert()">
        <h1>Payment Confirmation</h1>
    
        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" value="${user.getUserName()}" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.getEmail()}" required><br><br>

        <label for="roomType">Room Type:</label>
        <input type="text" id="roomType" name="roomType" value="${addroom.getRoomType()}" required><br><br>

        <label for="roomNumber">Room Number:</label>
        <input type="text" id="roomNumber" name="roomNumber" value="${addroom.getRoomNumber()}" required><br><br>

        <label for="checkInDate">Check-In Date:</label>
        <input type="text" id="checkInDate" name="checkInDate" value="${checkIn}" required><br><br>

        <label for="checkOutDate">Check-Out Date:</label>
        <input type="text" id="checkOutDate" name="checkOutDate" value="${checkOut}" required><br><br>

        <label for="totalCharges">Total Charges:</label>
        <input type="number" id="totalCharges" name="totalCharges" value="${totalCharge}" required><br><br>

        <input type="submit" value="Payment Confirm">
    </form>
</body>
</html>
