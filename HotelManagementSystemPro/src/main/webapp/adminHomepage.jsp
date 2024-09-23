<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="CSS/adminhome.css"> <!-- Link to your CSS file -->
    <style>
       body {
    display: flex;
    background-color: gray;
    background-image: url('Images/hotel4.jpg'); /* Add background image here */
    background-size: cover; /* Ensure the image covers the entire background */
    background-position: center; /* Center the background image */
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

        .navbar {
            display: flex;
            flex-direction: column; /* Align links vertically */
            gap: 20px;
        }

        .navbar a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #f0f0f0;
            border-radius: 5px;
            color: #333;
            transition: background-color 0.3s;
            text-align: center;
        }

        .navbar a:hover {
            background-color: blue;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="/AddRoom.jsp">Add Rooms</a>
        <a href="/RoomReport">AllRooms</a>
        <a href="/LogOut.jsp">Logout</a>
    </div>
</body>
</html>
