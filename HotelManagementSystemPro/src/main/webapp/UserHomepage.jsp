<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Management System</title>
<link rel="stylesheet" href="CSS/userhomepage.css"> <!-- Link to your CSS file -->
</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <form action="/AvailableRoom"><input type="hidden" value="${userid}" name="userid"><button type="submit">Book Room</button></form>
                <a href="/ContactUs.jsp">Contact Us</a>
                <a href="/AboutUs.jsp">About US</a>
                <a href="/LogOut.jsp">Logout</a>
            </div>
        </nav>
    </header>

    <main>
        <div class="partition">
    <div class="food-menu">
        <h3>Food Menu</h3>
        <div class="menu-item">
            <img src="Images/food1.jpg" alt="Chiken Thali">
            <div class="item-details">
                <h4>Chicken Thali</h4>
                <p>A wholesome meal consisting of a variety of Indian dishes served on a single plate. Includes rice, dal, vegetables, chapati, and a side of pickle.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/food2.jpg" alt="Paneer Tikka">
            <div class="item-details">
                <h4>Paneer Tikka</h4>
                <p>Grilled chunks of marinated paneer (Indian cottage cheese) with a blend of spices. Served with mint chutney and onions.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/food3.jpg" alt="Veg Thali">
            <div class="item-details">
                <h4>Veg Thali</h4>
                <p>A vegetarian platter featuring a variety of Indian dishes including rice, vegetable curry, dal, chapati, and a sweet dish.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/food4.jpg" alt="Indian Thali">
            <div class="item-details">
                <h4>Indian Thali</h4>
                <p>A traditional Indian meal with a selection of dishes such as rice, dal, vegetables, chapati, and a side of pickles and curd.</p>
                <p><strong>Price: $12</strong></p>
            </div>
        </div>
        <!-- Add more menu items as needed -->
    </div>

    <div class="facilities">
        <h3>Desserts & Beverages</h3>
        <div class="menu-item">
            <img src="Images/ice3.jpg" alt="Desert">
            <div class="item-details">
                <h4>Desert</h4>
                <p>A delectable dessert made with fresh ingredients. Includes options like cakes, pastries, and sweet puddings.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/ice1.jpg" alt="Frozen-Ice Cream">
            <div class="item-details">
                <h4>Frozen Ice Cream</h4>
                <p>Refreshing and creamy ice cream available in a variety of flavors. Perfect for a sweet treat on a hot day.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/ice2.jpg" alt="Cold Coffee">
            <div class="item-details">
                <h4>Cold Coffee</h4>
                <p>Chilled coffee blended with ice and milk. Topped with whipped cream and a sprinkle of cocoa powder.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="Images/ice4.jpg" alt="Hot Coffee">
            <div class="item-details">
                <h4>Hot Coffee</h4>
                <p>A classic hot coffee brewed to perfection. Served with a choice of milk, sugar, or cream.</p>
                <p><strong>Price: $15</strong></p>
            </div>
        </div>
    </div>
</div>

       <!-- Room Types Section -->
        <section id="room-types">
            <h2>Our Room Types</h2>
            <div class="room-grid">
                <div class="room">
                    <img src="/Images/single1.jpg" alt="Single Room">
                    <h3>Single Room</h3>
                    <p>Comfortable and cozy single room with all essential amenities.</p>
                    <p class="price">Price: $1500 per night</p>
                </div>
                <div class="room">
                    <img src="/Images/double1.jpg" alt="Double Room">
                    <h3>Double Room</h3>
                    <p>Spacious double room perfect for couples or friends.</p>
                    <p class="price">Price: $3000 per night</p>
                </div>
                <div class="room">
                    <img src="/Images/family.jpeg" alt="Family Room">
                    <h3>Family Room</h3>
                    <p>Room designed for family stays with extra space and amenities.</p>
                    <p class="price">Price: $6000 per night</p>
                </div>
                <div class="room">
                    <img src="/Images/ac.jpg" alt="AC Room">
                    <h3>AC Room</h3>
                    <p>Air-conditioned room for a comfortable stay in any weather.</p>
                    <p class="price">Price: $4500 per night</p>
                </div>
                <div class="room">
                    <img src="/Images/non.jpg" alt="Non-AC Room">
                    <h3>Non-AC Room</h3>
                    <p>Economical option with basic amenities and ventilation.</p>
                    <p class="price">Price: $2500 per night</p>
                </div>
                <div class="room">
                    <img src="/Images/luxry.jpg" alt="Luxury Room">
                    <h3>Luxury Room</h3>
                    <p>Luxurious room with premium features and top-notch comfort.</p>
                    <p class="price">Price: $5500 per night</p>
                </div>
            </div>
        </section>
        
    </main>

    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>
