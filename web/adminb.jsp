

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
    <body>
        <%
            String a = request.getParameter("user");
            String b = request.getParameter("pass");
            System.err.println(a);
            System.err.println(b);
            
             if (a.toLowerCase().trim().equals("tonmoy") && b.toLowerCase().trim().equals("1234")) {
                
                session.setAttribute("username", a);
                System.err.println("sucess");
                response.sendRedirect("adminsuccess.jsp");
             }
            else {
               out.println("Login failed");
               %>
               <a href="admin.jsp">login </a> 
                <%
            }
            

            %>
     
    </body>
      </center>
</html>
