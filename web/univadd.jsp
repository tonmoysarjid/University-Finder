<%-- 
    Document   : univadd
    Created on : Nov 7, 2018, 6:00:03 PM
    Author     : Tapu & Dev
--%>



<%@page import= "java.io.InputStream"%>
<%@page import= "java.util.stream.Stream"%>
<%@page import= "java.sql.*"%>
<%@page import= "javax.servlet.annotation.MultipartConfig" %>;
<%@page import= "javax.servlet.annotation.WebServlet" %>;
<%@page import= " javax.servlet.http.HttpServlet" %>;
<%@page import= " javax.servlet.http.HttpServletRequest" %>;
<%@page import= " javax.servlet.http.HttpServletResponse" %>;
<%@page import= "javax.servlet.http.Part" %>;

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>univv add</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
        
        <%
            //MultipartFormDataRequest mrequest;
            //MultipartFormDataRequest mrequest=new MultipartFormDataRequest(request);
            String name = request.getParameter("univ");
            String region = request.getParameter("region");
            String ssc = request.getParameter("ssc");
            System.err.println(name);
            
            /* Part filePart = request.getPart("photo");
                     InputStream inputStream = null;

        if (filePart != null) {
            // debug messages
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
            */
            double s = Double.parseDouble(ssc);
            String hsc = request.getParameter("hsc");
            System.err.println(hsc);
            double h = Double.parseDouble(hsc);
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/univfindr?zeroDateTimeBehavior=convertToNull","root","");
              Statement st = con.createStatement(); 
              
              String sql = "INSERT INTO university (univname, ssc, hsc,region ) values (?, ?, ?,  ?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, name);
            statement.setDouble(2, s);
            statement.setDouble(3, h);
/*
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(4, inputStream);
            }*/
            statement.setString(4, region);
out.println("success");
            // sends the statement to the database server
            //int row = statement.executeUpdate();
              
              
//st.executeUpdate("insert into university (univname,ssc,hsc,region) values ( '" + name +" ', " + s + " ,  " + h + "  ,' " + region + "' ) "   );

            
            
            %>
    </body>
</html>
