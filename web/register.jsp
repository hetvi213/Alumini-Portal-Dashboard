<%-- 
    Document   : register
    Created on : 3 Aug, 2025, 9:23:57 AM
    Author     : Diya Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel ="stylesheet" href="style.css">
    </head>
    <body>
        <div class="form-container">
            <h2>Alumni Registration</h2>
            <form action="registerServlet" method="post" enctype="multipart/form-data">

                <div class="name-row">
                    <div class="input-group">
                        First Name:
                        <input type="text" name="fname" required>
                    </div>
                    <div class="input-group">
                        <label for="lname">Last Name</label>
                        <input type="text" name="lname" required>
                    </div>
                </div>

                <label for="email">Email</label>
                <input type="email" name="email" required>

                <label for="password">Password</label>
                <input type="password" name="password" required>

                <label for="phone">Phone Number</label>
                <input type="text" pattern="\d{10}" maxlength="10" title="Enter a 10-digit phone number" name="phone" required>

                <div class="select-row">
                    <div class="input-group">
                        <label>Graduation Year:</label>
                        <select name="graduation" required>
                            <option value="" disabled selected>Select Year</option>
                            <option value="2004">2004</option>
                            <option value="2005">2005</option>
                            <option value="2006">2006</option>
                            <option value="2007">2007</option>
                            <option value="2008">2008</option>
                            <option value="2009">2009</option>
                            <option value="2010">2010</option>
                            <option value="2011">2011</option>
                            <option value="2012">2012</option>
                            <option value="2013">2013</option>
                            <option value="2014">2014</option>
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <label>Department:</label>
                        <select name="department" required>
                            <option value="" disabled selected>Select Department</option>
                            <option value="BSc(IT)">BSc(IT)</option>
                            <option value="BMS">BMS</option>
                            <option value="BAMMC">BAMMC</option>
                            <option value="BAFTNMP">BAFTNMP</option>
                            <option value="MSc (IT)">MSc IT</option>
                            <option value="M Com">M Com</option>
                            <option value="MSc AI&DS">MSc AI & DS</option>
                            <option value="MAFTNMP">MAFTNMP</option>
                            <option value="MA[EMA]">MA[EMA]</option>
                        </select> 
                    </div>
                </div>



                <label for="linkUrl">LinkedIn Profile URL</label>
                <input type="url" name="linkUrl" placeholder="https://www.linkedin.com/in/yourprofile" required>

                <div class="select-row">
                    <div class="input-group">
                        <label for="occp">Employee Of:</label>
                        <input type="text"  name="occp" required>
                    </div>
                    <div class="input-group">
                        <label for="desig">Designation:</label>
                        <input type="text" name="desig" required>
                    </div>
                </div>



                <label for="photo">Upload Profile Photo</label>
                <input type="file" name="photo" accept="image/*" required>

                <label for="about">About Yourself</label>
                <textarea  name="about" rows="4" placeholder="Write a brief about yourself..." required></textarea>

                <input type="submit" value="Register"/>

                <a href="login.jsp">Already have an account? Login</a>
            </form>
        </div>
    </body>
</html>
