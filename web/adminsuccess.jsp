<%-- 
    Document   : adminsuccess
    Created on : Nov 7, 2018, 4:59:57 PM
    Author     : Tapu & Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      </head> 
     <center>
        <h1>ADD  An New University </h1>
        <br> <br>
        <form   method="post" action="univadd.jsp">
            <table border="0">
                <tr>
                    <td>University  name: </td>
                    <td><input type="text" name="univ" size="50"/></td>
                </tr>
                <tr>
                    <td>region</td>
                    <td><input type="text" name="region" size="50"/></td>
                </tr>
                <tr>
                    <td>SSC GPA cutoff</td>
                    <td><input type="text" name="ssc" size="20"/></td>
                </tr>
                
                <tr>
                    <td>HSC GPA Cutoff</td>
                    <td><input type="text" name="hsc" size="20"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>
      
    </body>
</html>
