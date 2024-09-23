<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<link rel="stylesheet" href="CSS/UserLogin.css"> 
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
        <section class="login-container">
            <h2>User Login</h2>
            <form action="/userloginfrom" method="post" class="login-form">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <br>
                <button type="submit">Login</button>
            </form>
	<br>
            <div class="links">
                <a href="UserRegistration.jsp">Sign Up</a>
                <a href="/forgotPassword">Forgot Password?</a>
            </div>
        </section>
    </main>

   <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>
