<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/roomupdate.css">

</head>
<body>
<div class="container">
        <h1>Edit Your Data</h1>
        <form action="/update" method="post">
            <input type="hidden" name="id" value="${sdata.id}">
            
            <div class="form-group">
                <label for="roomnumber">Room Number:</label>
                <input type="text" id="roomNumber" name="roomNumber" value="${sdata.roomNumber}" required>
            </div>
            
            <div class="form-group">
                <label for="roomtype">Room Type:</label>
                <input type="text" id="roomType" name="roomType" value="${sdata.roomType}" required>
            </div>
            
            <div class="form-group">
                <label for="charges">Charges :</label>
                <input type="text" id="charges" name="charges" value="${sdata.charges}" required>
            </div>
            
            <div class="form-group">
                <label for="availability">Availability:</label>
                <input type="text" id="availability" name="availability" value="${sdata.availability}" required>
            </div>
            
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="text" id="date" name="image" value="${sdata.image}" required>
            </div>  
            
            <div class="button-group">
                <button type="submit">Update</button>
            </div>
        </form>
    <button type="button" onclick="window.location.href='/RoomReport'">Cancel</button>
        
    </div>
</body>
</html>