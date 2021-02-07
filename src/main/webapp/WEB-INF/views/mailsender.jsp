<%-- 
    Document   : mailsender
    Created on : Apr 16, 2019, 2:13:13 PM
    Author     : akhojayev
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
            try {
                String name =    request.getParameter("name");
                String subject = request.getParameter("subject");
                String email = request.getParameter("email");
                String message = request.getParameter("message");
                //SendMailBySite bySite = new SendMailBySite();
                System.out.println(name);
                System.out.println(subject);
                System.out.println(email);
                System.out.println(message);

             /*   if (name != null && subject != null && message != null && email != null) {
                    if (new SendMailBySite().senMail(name, email, subject, message)) {
                        out.print("<script> alert('Your message successfuly sent!! Thanks') </script>");
                          
                    }
                }*/

            } catch (Exception e) {
                System.out.println("Error while mail sending");
                e.printStackTrace();
            }
        %>
    </body>
</html>
