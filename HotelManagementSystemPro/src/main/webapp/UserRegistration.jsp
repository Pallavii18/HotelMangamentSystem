<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/UserRegistration.css"> 
</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <a href="/userLogin">User Login</a>
            </div>
        </nav>
    </header>

    <main>
        <section>
            <center><h2>User Regisration</h2></center>
            <form action="/userlogin" method="post">
                <label for="userName">Name:</label>
                <input type="text" id="userName" name="userName" required>
                <br>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <br>
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                <br>
                <label for="mobile">Mobile:</label>
                <input type="text" id="mobile" name="mobile" required>
                <br>
                <label for="address">Address:</label>
                <textarea id="address" name="address" required></textarea>
                <br>
                <button type="submit">Sign Up</button>
            </form>
        </section>
    </main>
<br><br><br><br><br><br>
    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>