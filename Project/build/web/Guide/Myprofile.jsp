<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%

    // Retrieve guide ID from session
    String guideid = (String) session.getAttribute("gid");

    // Fetch guide details from the database
    String selQry = "select * from tbl_guide where guide_id='" + guideid + "'";
    ResultSet resultguide = con.selectCommand(selQry);
    resultguide.next(); // Move the cursor to the first row

    // Retrieve guide details from the result set
    String firstName = resultguide.getString("guide_first_name");
    String lastName = resultguide.getString("guide_last_name");
    String contact = resultguide.getString("guide_contact");
    String email = resultguide.getString("guide_email");
%>

<%@include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Guide Profile</title>
    </head>

    <body>
        <form id="form1" name="form1" method="post" action="">
            <table width="290"  border="1">
                <tr>
                    <td>Name</td>
                    <td><label for="txt_name"><%= firstName%> <%= lastName%></label></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><label for="txt_contact"><%= contact%></label></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><label for="txt_email"><%= email%></label></td>
                </tr>
            </table>
        </form>
    </body>
</html>
<%@include file="Foot.jsp" %>
