<%-- 
    Document   : searchb
    Created on : Nov 7, 2018, 7:15:53 PM
    Author     : Tapu & Dev
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>search back</title>
    </head>
    <center>
        <%
            
String ssc = request.getParameter("ssc");
System.err.println(ssc);           
double s = Double.parseDouble(ssc);
            System.err.println(s);
            String hsc = request.getParameter("hsc");
            double h = Double.parseDouble(hsc);
            System.err.println(h);
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/univfindr?zeroDateTimeBehavior=convertToNull","root","1234");
              Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("Select * from university where ssc<="+s + "and hsc<=" + h   );
    
            out.print("<br>");
             out.print("<h1>University LIST");
            out.print("<br>");
            out.print("<br>");
            out.print("<br>");
          
          if(!rs.next())
                  out.print("<br><br><br><h1>NO match found!! TRY again </h1>");
      
            while(rs.next()){
                 
                out.print("<h2>");
                out.print("|Name  ---");
                out.print(rs.getString("univname"));
                out.println("");
                out.print("|Region ---");
                out.println(rs.getString("region"));
                out.println("");
                out.print("|SSC ---");
                out.println(rs.getDouble("ssc"));
                out.println("");
                out.print("|HSC ---");
                out.println(rs.getDouble("hsc"));
                out.println("|"); 
                out.print("</h2>");   
            }
            %>
        
        
    </center>
</html>
