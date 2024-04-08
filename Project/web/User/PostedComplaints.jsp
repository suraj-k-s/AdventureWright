<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>

<%
    session = request.getSession();
    String userid = (String)session.getAttribute("uid");
    String selQry = "select * from tbl_complaint where user_id='" + userid + "'";
    ResultSet data = con.selectCommand(selQry);
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>UserComplaints</title>
</head>
        <%@include file="Head.jsp" %>

<body>
    <a href="HomePage.jsp">Homepage</a>
    <table width="776" height="83" border="1">
        <tr>
            <td width="152" height="26">Serial number</td>
            <td width="167">Title</td>
            <td width="129">Complaint</td>
            <td width="129">PostedDate</td>
            <td width="66">Reply</td>
            <td width="228">ReplyDate</td>
        </tr>
        <%
            int i = 0;
            while(data.next()) {
                i++;
        %>
        <tr>
            <td height="49"><%= i %></td>
            <td><%= data.getString("complaint_title") %></td>
            <td><%= data.getString("complaint_description") %></td>
            <td><%= data.getString("complaint_date") %></td>
            <td><%= data.getString("complaint_reply") %></td>
            <td><%= data.getString("complaint_reply_date") %></td>
        </tr>
        <%
            }
        %>
    </table>
        <%@include file="Foot.jsp" %>
</body>
</html>
