<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Alumni Event Gallery</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #fff;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            overflow-y: hidden;
        }

        .header {
            background-color: #002d72;
            color: white;
            padding: 1rem;
            text-align: center;
        }

        .section-title {
            font-size: 24px;
            margin: 30px 20px 10px;
            color: #001f4d;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            gap: 50px;
            padding: 0 20px 40px;
        }

        .gallery img {
            width: 180px;
            height: 140px;
            object-fit: cover;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            transition: transform 0.4s ease-in-out, opacity 0.4s;
        }

        .gallery img:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }

        .fade-in {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>

    <%@ include file="nav.jsp" %>

    <!-- 2025 Event Gallery -->
    <section>
        <div align="center" class="section-title">2025 Alumni Day: Annual General Meeting and Dinner</div> <br>
        <div class="gallery">
            <img src="pic/41.jpg" data-aos="zoom-in" alt="2025 Event 1">
            <img src="pic/42.jpg" data-aos="fade-up" alt="2025 Event 2">
            <img src="pic/43.jpg" data-aos="zoom-in" alt="2025 Event 3">
            <img src="pic/44.jpg" data-aos="fade-up" alt="2025 Event 4">
            <img src="pic/45.jpg" data-aos="zoom-in" alt="2025 Event 5">
            <img src="pic/46.jpg" data-aos="fade-up" alt="2025 Event 6">
        </div>
    </section>

    <!-- 2024 Event Gallery -->
    <section>
        <div align="center" class="section-title">2024 Alumni Day: Annual General Meeting and Dinner</div> <br>
        <div class="gallery">
            <img src="pic/31.jpg" data-aos="fade-up" alt="2024 Event 1">
            <img src="pic/32.jpg" data-aos="zoom-in" alt="2024 Event 2">
            <img src="pic/33.jpg" data-aos="fade-up" alt="2024 Event 3">
            <img src="pic/34.jpg" data-aos="zoom-in" alt="2024 Event 4">
            <img src="pic/35.jpg" data-aos="fade-up" alt="2024 Event 5">
            <img src="pic/36.jpg" data-aos="zoom-in" alt="2024 Event 6">
        </div>
    </section>
    
    <!-- 2023 Event Gallery -->
    <section>
        <div align="center" class="section-title">2023 Alumni Day: Annual General Meeting and Dinner</div> <br>
        <div class="gallery">
            <img src="pic/41.jpg" data-aos="zoom-in" alt="2025 Event 1">
            <img src="pic/42.jpg" data-aos="fade-up" alt="2025 Event 2">
            <img src="pic/43.jpg" data-aos="zoom-in" alt="2025 Event 3">
            <img src="pic/44.jpg" data-aos="fade-up" alt="2025 Event 4">
            <img src="pic/45.jpg" data-aos="zoom-in" alt="2025 Event 5">
            <img src="pic/46.jpg" data-aos="fade-up" alt="2025 Event 6">
        </div>
    </section>
    
    <!-- 2022 Event Gallery -->
    <section>
        <div align="center" class="section-title">2022 Alumni Day: Annual General Meeting and Dinner</div> <br>
        <div class="gallery">
            <img src="pic/31.jpg" data-aos="fade-up" alt="2024 Event 1">
            <img src="pic/32.jpg" data-aos="zoom-in" alt="2024 Event 2">
            <img src="pic/33.jpg" data-aos="fade-up" alt="2024 Event 3">
            <img src="pic/34.jpg" data-aos="zoom-in" alt="2024 Event 4">
            <img src="pic/35.jpg" data-aos="fade-up" alt="2024 Event 5">
            <img src="pic/36.jpg" data-aos="zoom-in" alt="2024 Event 6">
        </div>
    </section>
    
<!-- AOS JS -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
  AOS.init();
</script>
<%@ include file="footer.jsp" %>
</body>
</html>