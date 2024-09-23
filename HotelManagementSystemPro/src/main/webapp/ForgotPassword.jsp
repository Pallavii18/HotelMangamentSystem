<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <a href="userLogin">User Login</a>
                <a href="adminLogin">Admin Login</a>
                <a href="contact">Contact Us</a>
                <a href="about">About Us</a>
            </div>
        </nav>
    </header>

    <main>
        <section>
            <h2>Forgot Password</h2>
            <form action="forgotPassword" method="post">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <br>
                <button type="submit">Reset Password</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>