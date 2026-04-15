<!-- nav.jsp -->
<header>
  <div class="branding">
    <img src="pic/logo1.jpg" alt="UPG logo">

    <div class="college-name-container">
      <div class="v-line"></div>
      <div class="college-name">UPG Alumni Association</div>
    </div>
  </div>

  <nav>
    <a href="home.jsp">Home</a>
    <a href="event.jsp">Events</a>
    <a href="membership.jsp">Membership</a>
    <a href="Communityservlet">Community</a>
    <a href="register.jsp">Log in/Register</a>
  </nav>
</header>


<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const tl = gsap.timeline();
    tl.set(".college-name", { x: -100, opacity: 0 })
      .to(".v-line", {
        height: 60,
        duration: 0.6,
        ease: "power2.out",
      })
      .to(".college-name", {
        x: 0,
        opacity: 1,
        duration: 0.8,
        ease: "power2.out",
      }, "+=0.1");
  });
</script>