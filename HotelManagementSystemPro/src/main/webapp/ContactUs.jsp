<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/CSS/contactus.css">

</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <a href="/ContactUs.jsp">Contact Us</a>
               <a href="LogOut.jsp">LogOut</a>    
            </div>
        </nav>
    </header>

    <main>
        <div class="contact-container">
            <h2>Contact Us</h2>
             <%-- Display the success message if present --%>
            <% 
                String successMessage = (String) session.getAttribute("successMessage");
                if (successMessage != null) { 
            %>
                <p class="success-message"><%= successMessage %></p>
                <% 
                    // Remove the message from the session after displaying it
                    session.removeAttribute("successMessage");
                } 
            %>
            <form class="contact-form" action="${pageContext.request.contextPath}/sendContact" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>