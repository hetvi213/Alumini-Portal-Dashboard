import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig
public class registerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registerServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String year = request.getParameter("graduation");
            String dept = request.getParameter("department");
            String url = request.getParameter("linkUrl");
            String company_name = request.getParameter("occp");
            String designation = request.getParameter("desig");
            
            Part filePart = request.getPart("photo");
            String fileName = filePart.getSubmittedFileName();
            String appPath = getServletContext().getRealPath("/");
            String uploadPath = "C:/Advanced_Java/Alumni_Portal/uploads";
            String savePath = uploadPath + File.separator + fileName;

            try (InputStream input = filePart.getInputStream();
                    OutputStream output = new FileOutputStream(savePath)) {

                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = input.read(buffer)) != -1) {
                    output.write(buffer, 0, bytesRead);
                }
            } catch (IOException e) {
                e.printStackTrace();
                out.println("File upload failed: " + e.getMessage());
            }
            
            String about = request.getParameter("about");
            
            

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/auth", "root", "");
                String sql = "insert into register values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setString(1, fname);
                ps.setString(2, lname);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.setString(5, phone);
                ps.setString(6, year);
                ps.setString(7, dept);
                ps.setString(8, url);
                ps.setString(9, company_name);
                ps.setString(10, designation);
                ps.setString(11, fileName);
                ps.setString(12, about);
                

                int rows = ps.executeUpdate();

                if (rows == 1) {
                    response.sendRedirect("login.jsp");
                } else {
                    response.getWriter().println("Error saving data.");
                }

            } catch (Exception e) {
                out.println("Exception occurred: " + e);
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private String extractFileName(Part filePart) {
        for (String cd : filePart.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return new File(cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "")).getName();
            }
        }
        return null;
    }

}
