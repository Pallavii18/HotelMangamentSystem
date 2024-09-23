<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/Style.css"> <!-- Link to your CSS file -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <nav>
            <div class="navbar">
                <a href="/">Home</a>
                <a href="userLogin.jsp">User Login</a>
                <a href="adminLogin.jsp">Admin Login</a>
                <a href="ContactUs.jsp">Contact Us</a>
                <a href="AboutUs.jsp">About Us</a>
            </div>
        </nav>
    </header>

    <main>
        <section>
            <!-- Add any content needed for this section -->
        </section>

        <!-- Image Slider Section -->
        <div class="slider-container">
            <div class="slides">
                <div class="slide">
                    <img src="/Images/hotel4.jpg" alt="Hotel Image 1">
                </div>
                <div class="slide">
                    <img src="/Images/hotel7.jpeg" alt="Hotel Image 2">
                </div>
                <div class="slide">
                    <img src="/Images/family.jpeg" alt="Hotel Image 3">
                </div>
            </div>
            <!-- Navigation Buttons -->
            <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
            <a class="next" onclick="moveSlides(1)">&#10095;</a>
        </div>

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

         <!-- Room Types Section -->
        <section id="room-types">
            <h2>Our Room Types</h2>
            <div class="room-container">
                <div class="room">
                    <img src="/Images/single1.jpg" alt="Single Room">
                    <h3>Single Room</h3>
                    <p>Comfortable and cozy single room with all essential amenities.</p>
                    <p class="price">Price: $1500 per night</p>
                   <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
                <div class="room">
                    <img src="/Images/double1.jpg" alt="Double Room">
                    <h3>Double Room</h3>
                    <p>Spacious double room perfect for couples or friends.</p>
                    <p class="price">Price: $3000 per night</p>
                    <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
                <div class="room">
                    <img src="/Images/family.jpeg" alt="Family Room">
                    <h3>Family Room</h3>
                    <p>Room designed for family stays with extra space and amenities.</p>
                    <p class="price">Price: $6000 per night</p>
                    <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
                <div class="room">
                    <img src="/Images/ac.jpg" alt="AC Room">
                    <h3>AC Room</h3>
                    <p>Air-conditioned room for a comfortable stay in any weather.</p>
                    <p class="price">Price: $4500 per night</p>
                    <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
                <div class="room">
                    <img src="/Images/non.jpg" alt="Non-AC Room">
                    <h3>Non-AC Room</h3>
                    <p>Economical option with basic amenities and ventilation.</p>
                    <p class="price">Price: $2500 per night</p>
                <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
                <div class="room">
                    <img src="/Images/luxry.jpg" alt="Luxury Room">
                    <h3>Luxury Room</h3>
                    <p>Luxurious room with premium features and top-notch comfort.</p>
                    <p class="price">Price: $5500 per night</p>
                    <a href="userLogin.jsp" class="btn">Book Now</a>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Hotel Management System. Pallavii Walke</p>
    </footer>

    <!-- JavaScript for Slider -->
    <script>
        let currentIndex = 0;

        function showSlides(index) {
            const slides = document.querySelector('.slides');
            const totalSlides = slides.children.length;

            if (index >= totalSlides) { currentIndex = 0; }
            if (index < 0) { currentIndex = totalSlides - 1; }

            slides.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
        }

        function moveSlides(step) {
            currentIndex += step;
            showSlides(currentIndex);
        }

        // Auto slide function
        setInterval(() => {
            moveSlides(1);
        }, 3000); // Change slides every 3 seconds
    </script>
</body>
</html>