
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class Community {

    String Image;
    String Fname;
    String Company;
    String Course;
    String link;

    public Community(String img, String name, String company, String course, String link) {
        this.Image = img;
        this.Fname = name;
        this.Company = company;
        this.Course = course;
        this.link = link;
    }
}

@WebServlet("/Communityservlet")
public class Communityservlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        ArrayList<Community> community = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "root");
            String query = "SELECT * FROM register";
            java.sql.Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                Community com = new Community(
                        rs.getString("photoPath"),
                        rs.getString("firstName") + " " + rs.getString("lastName"),
                        rs.getString("company_name"),
                        rs.getString("graduation"),
                        rs.getString("linkedUrl")
                );
                community.add(com);
            }

        } catch (SQLException e) {
            out.println(e);
            e.printStackTrace();
        }

        // HTML Output
        out.println("<!DOCTYPE html>");
        out.println("<html><head><title>SVKM's UPG College Alumni Community</title>");
        out.println("<meta charset='UTF-8'/>");
        out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'/>");
        out.println("<link rel='stylesheet' href='css/style.css'>");
        out.println("<script src='https://cdn.tailwindcss.com'></script>");
        out.println("</head><body>");

        out.println("<header>");
        out.println("  <div class='branding'>");
        out.println("    <img src='pic/logo1.jpg' alt='UPG logo'>");

        out.println("    <div class='college-name-container'>");
        out.println("      <div class='v-line'></div>");
        out.println("      <div class='college-name'>UPG Alumni Association</div>");
        out.println("    </div>");
        out.println("  </div>");

        out.println("  <nav>");
        out.println("    <a href='home.jsp'>Home</a>");
        out.println("    <a href='event.jsp'>Events</a>");
        out.println("    <a href='membership.jsp'>Membership</a>");
        out.println("    <a href='Communityservlet'>Community</a>");
        out.println("    <a href='register.jsp'>Log in/Register</a>");
        out.println("  </nav>");
        out.println("</header>");

        out.println("<script>");
        out.println("  document.addEventListener('DOMContentLoaded', function () {");
        out.println("    const tl = gsap.timeline();");
        out.println("    tl.set('.college-name', { x: -100, opacity: 0 })");
        out.println("      .to('.v-line', {");
        out.println("        height: 60,");
        out.println("        duration: 0.6,");
        out.println("        ease: 'power2.out'");
        out.println("      })");
        out.println("      .to('.college-name', {");
        out.println("        x: 0,");
        out.println("        opacity: 1,");
        out.println("        duration: 0.8,");
        out.println("        ease: 'power2.out'");
        out.println("      }, '+=0.1');");
        out.println("  });");
        out.println("</script>");

        out.println("<div class='px-4 py-16 bg-white text-center'>");
        out.println("<h1 class='text-3xl md:text-4xl font-bold text-gray-900'>UPG College Alumni Community Teams</h1>");
        out.println("<p class='text-lg text-gray-600 mt-2'>Connect, Collaborate & Grow with fellow Alumni</p>");
        out.println("</div>");

        out.println("<div class='max-w-6xl mx-auto grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8'>");
        for (Community com : community) {

            out.println("<div class='bg-white border border-black rounded-xl p-5 shadow text-center'>");
            String imgPath = request.getContextPath() + "/uploads/" + com.Image;
            out.println("<img src='" + imgPath + "' alt='Profile' class='w-30 h-30 mx-auto rounded-lg mb-4'/>");

            out.println("<p class='font-semibold'>Name : " + com.Fname + "</p>");
            out.println("<p class='font-semibold'>Company : " + com.Company + "</p>");
            out.println("<p class='font-semibold'>Course : " + com.Course + "</p>");
            out.println("<p class='font-semibold'>LinkedIn : <a href='" + com.link + "' target='_blank' class='text-blue-600 underline'>View</a></p>");
            out.println("</div>");
        }

        out.println("</div></body></html>");
    }
}
