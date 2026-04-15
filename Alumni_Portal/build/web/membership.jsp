<%-- 
    Document   : membership
    Created on : 25 Aug, 2025, 1:36:40 PM
    Author     : Diya Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>SVKM's UPG College Alumni Membership</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
      @keyframes fadeInUp {
        from {
          transform: translateY(20px);
          opacity: 0;
        }
        to {
          transform: translateY(0);
          opacity: 1;
        }
      }

      .fade-in-up {
        animation: fadeInUp 0.8s ease-out forwards;
      }

      /* Fixed Image Scroll */
      @media (min-width: 768px) {
        .fixed-image {
          position: sticky;
          top: 6rem; /* below navbar */
        }
      }
    </style>
    <link rel="stylesheet" href="css/style.css">
  </head>

  <body class="bg-white text-gray-900 ">
   <%@ include file="nav.jsp" %>

    <!-- Heading with Subtle Background Image -->
<div class="relative  px-2 py-20 flex justify-center items-center overflow-hidden bg-white">
  <h1 class="text-3xl md:text-4xl font-bold text-gray-900 text-center z-10 relative">
    SVKM's UPG College Alumni Membership
  </h1>
  <img
    src="pic/membershipBanner.jpg"
    alt="Background"
    class="absolute inset-0 w-full h-full object-cover opacity-70 pointer-events-none"
  />
  <!-- Optional: Add a soft overlay -->
  <div class="absolute inset-0 bg-white bg-opacity-60"></div>
</div>

    <!-- Content Section -->
    <div
      class="flex flex-col md:flex-row items-start justify-center px-6 md:px-16 py-10 space-y-8 md:space-y-0 md:space-x-10 max-w-7xl mx-auto"
    >
      <!-- Image Left - Fixed while scrolling -->
      <div class="md:w-1/2 fade-in-up fixed-image">
        <img
          src="pic/membershipBanner.jpg"
          alt="Alumni"
          class="w-full max-w-md rounded-lg shadow-xl mx-auto transform hover:scale-105 transition duration-500"
        />
      </div>

      <!-- Text Right -->
      <div class="md:w-1/2 fade-in-up text-justify mt-6 md:mt-0">
        <p class="mb-4 text-lg font-semibold">
          Welcome to UPG Alumni Membership Page
        </p>
        <p class="mb-4">
          Are you a graduate of SVKM’s UPG College? Whether you're currently
          living in India or abroad, we warmly invite you to become an active
          member of the UPG Alumni community. Join us to reconnect, stay
          informed, and contribute to a growing network of professionals,
          leaders, and changemakers.
        </p>

        <p class="mb-2 font-semibold">By signing up, you’ll gain access to:</p>
        <ul class="list-disc ml-5 mb-4 space-y-1">
          <li>
            <strong>Exclusive Events</strong> – reunions, webinars, and
            college-led programs.
          </li>
          <li>
            <strong>Networking & Mentorship</strong> – connect and mentor with
            fellow alumni.
          </li>
          <li>
            <strong>Professional Development</strong> – job boards, panel
            discussions, and workshops.
          </li>
          <li>
            <strong>Community Engagement</strong> – be a guest speaker, mentor,
            or donor.
          </li>
          <li>
            <strong>Updates & Publications</strong> – newsletters and milestone
            updates.
          </li>
        </ul>

        <p class="mb-2 font-semibold">Membership Criteria</p>
        <p class="mb-4">
          To join, you must have graduated from SVKM’s UPG College
          (undergraduate, postgraduate, diploma, or certificate program) and be
          of Indian descent or affiliated internationally.
        </p>

        <p class="mb-4">
          Be part of a diverse, engaged network. Whether you're a professional,
          entrepreneur, academic, or student — there's a place for you in the
          UPG Alumni family.
        </p>

        <p class="mb-2 font-semibold">Membership Plan</p>
        <p class="mb-4">
          Secure your active status with a yearly contribution. Once payment is
          confirmed, you’ll receive access to member-only features. Admin
          verification takes up to 24 hours.
        </p>

        <p>
          For support, contact:
          <a href="mailto:info@upgalumni.org" class="text-blue-700 underline hover:text-blue-900">info@upgalumni.org</a>
        </p>
      </div>
    </div>
     <%@ include file="footer.jsp" %>
  </body>
</html>

