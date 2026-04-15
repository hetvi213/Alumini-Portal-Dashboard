<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>UPG Alumni Portal</title>
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <%@ include file="nav.jsp" %>


<div class="hero">
  <h1>Welcome to SVKM's UPG Alumni Chapter</h1>
  <p>Connect with fellow College alumni in UPG. Join us for exclusive events and professional opportunities.</p>
  <a href="Communityservlet" class="btn">Join Community</a>
</div>

<!-- Our Story (image right) -->
<div id="about">
  <div class="about-container">
    <div class="about-text">
      <h2>Our Story</h2>
      <p>The University of Dundee Alumni Chapter, Nigeria was founded in 2018. We are a non-profit association dedicated to fostering connections among graduates of Nigerian descent or residing in Nigeria from the prestigious University of Dundee, Scotland.</p>
      <a href="#" class="read-more">Read More →</a>
    </div>
    <div class="about-image">
      <img src="pic/photo7.png" alt="Alumni Group Photo">
    </div>
  </div>
</div>

<!-- Other Sections (image left, text right) -->
<div id="mission">
  <div class="about-container reverse">
    <div class="about-image">
      <img src="pic/v&m.jpg" alt="Mission Image">
    </div>
    <div class="about-text">
      <h2>Our Vision and Mission</h2>
      <p>We strive to be a dynamic network of alumni committed to collective success and positive impact both in Nigeria and beyond.</p>
    </div>
  </div>
</div>

<div id="mentorship">
  <div class="about-container mentorship-custom">
    <div class="about-text mentorship-text">
      <h2>Mentorship Program: Share Your Career Insights with Future Professionals.</h2>
      <p>
        Would you like to share your experiences of professional life, career tips, and insights gained since graduating with the university’s current students? Become a mentor and receive a Mentoring Certificate from the University
      </p>
      <a href="#" class="btn-link">Find Out More ↗</a>
    </div>
    <div class="about-image mentorship-image">
      <img src="pic/photo1.png" alt="Mentorship Image">
    </div>
  </div>
</div>


<div id="events">
  <div class="about-container">
    <div class="about-text">
      <h2>Past & Upcoming Events</h2>
      <a href="event.jsp" class="btn-secondary">View All Events</a>
    </div>
      <div class="about-image">
      <img src="pic/events.jpg" alt="Events Image">
    </div>
  </div>
</div>
 <%@ include file="footer.jsp" %>
</body>
</html>
