<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>


<%
    session = request.getSession();
    String userid = (String)session.getAttribute("uid");
    String selQry = "select * from tbl_user where user_id='" + userid + "'";
    ResultSet resultadmin = con.selectCommand(selQry);
    if (resultadmin.next()) {
        String user_photo = resultadmin.getString("user_photo");
        String user_first_name = resultadmin.getString("user_first_name");
        String user_last_name = resultadmin.getString("user_last_name");
        String user_contact = resultadmin.getString("user_contact");
        String user_email = resultadmin.getString("user_email");
%>

<%@ include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>travelget:User profile</title>
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
        <table width="290" border="1">
            <tr>
                <td colspan="2" align="center">
                    <img src="../Assets/Files/<%= user_photo %>" width="75" height="76" />
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= user_first_name %> <%= user_last_name %></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><%= user_contact %></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%= user_email %></td>
            </tr>
        </table>
    </form>
    <a href="HomePage.jsp">Homepage</a>
</body>
<%@ include file="Foot.jsp" %>
</html>

<%
    }
%>
