<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="CSS/UserLogin.css">
</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
               
                <a href="/adminLogin">Admin Login</a>
            </div>
        </nav>
    </header>

    <main>
        <section class="login-container">
            <h2>Admin Login</h2>
            <form action="/adminLogin" method="post" class="login-form">
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
                <a href="/forgotPassword">Forgot Password?</a>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>
