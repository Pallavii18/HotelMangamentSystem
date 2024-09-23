<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/CSS/aboutus.css">
</head>
<body>
    <header>
        <div class="container">
           
            <nav>
                <ul>
                    <li><a href="/">Home</a></li>
                    <li><a href="aboutus.jsp" class="active">About Us</a></li>
                    <li><a href="ContactUs.jsp">Contact Us</a></li>
                    <li><a href="LogOut.jsp">LogOut</a></li>                 
                </ul>
            </nav>
        </div>
    </header>

 <section class="about">
        <div class="container">
            <h2>About Us</h2>
            <p>Hotel Deluxe has been a symbol of elegance and luxury since 2005. We offer a range of rooms and suites to meet your every need, with breathtaking views and high-end amenities.</p>
            <p>Our hotel is known for its exceptional hospitality, state-of-the-art facilities, and a commitment to making your stay memorable. Whether you are here for business or leisure, we provide an unforgettable experience.</p>
            <div class="features">
                <div class="feature">
                    <img src="/Images/hotel5.jpg" alt="Luxury Rooms">
                    <h3>Luxury Rooms</h3>
                    <p>Experience the finest comfort in our well-designed, spacious rooms.</p>
                </div>
                <div class="feature">
                    <img src="/Images/dinner.jpg" alt="Fine Dining">
                    <h3>Fine Dining</h3>
                    <p>Indulge in a variety of culinary delights from around the world.</p>
                </div>
                <div class="feature">
   					 <img src="/Images/swim.jpg" alt="Swimming with Dinner">
   					 <h3>Swimming with Dinner</h3>
   					 <p>Enjoy a delightful evening with a refreshing swim followed by a gourmet dinner at our exclusive restaurant.</p>
				</div>
            </div>
        </div>
    </section>
    
     
<!-- Facilities Section -->
        <section id="facilities" class="container mt-5">
            <h2 class="text-center mb-4">Our Facilities</h2>
            <div class="table-responsive">
                <table class="table table-hover table-bordered">
                    <thead class="thead-light">
                        <tr>
                            <th>Facility</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><i class="fas fa-dumbbell"></i> State-of-the-art Gym</td>
                            <td>Stay fit during your stay with our modern gym facilities.</td>
                        </tr>
                        <tr>
                            <td><i class="fas fa-swimming-pool"></i> Outdoor Swimming Pool</td>
                            <td>Enjoy a refreshing swim in our outdoor pool with a scenic view.</td>
                        </tr>
                        <tr>
                            <td><i class="fas fa-spa"></i> Relaxing Spa</td>
                            <td>Pamper yourself with our exclusive spa treatments and massages.</td>
                        </tr>
                        <tr>
                            <td><i class="fas fa-utensils"></i> Fine Dining Restaurant</td>
                            <td>Savor delicious meals at our on-site gourmet restaurant.</td>
                        </tr>
                        <tr>
                            <td><i class="fas fa-briefcase"></i> Conference & Meeting Rooms</td>
                            <td>Host your meetings or events in our well-equipped rooms.</td>
                        </tr>
                        <tr>
                            <td><i class="fas fa-wifi"></i> Free WiFi</td>
                            <td>Stay connected with complimentary high-speed internet access.</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>


   

   <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>
</body>
</html>