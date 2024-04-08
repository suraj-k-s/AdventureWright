<%@ page import="java.sql.ResultSet" %>
<%@ page import="DB.ConnectionClass" %>

<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    try {
        ResultSet data = null;
        String selQry = "select * from tbl_complaint p inner join tbl_user q on p.user_id=q.user_id where p.complaint_status='0'";
        data = con.selectCommand(selQry);
        int i = 0;
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>User Complaints</title>
</head>
<body>
    <table width="776" height="330" border="1" style="margin-left: 330px;">
        <tr>
            <td width="152">Serial number</td>
            <td width="167">Title</td>
            <td width="129">Complaint</td>
            <td width="228">User name</td>
            <td width="228">Posted Date</td>
            <td width="66">Action</td>
        </tr>
        <% 
            while (data.next()) {
                i++;
        %>
        <tr>
            <td><%= i %></td>
            <td><%= data.getString("complaint_title") %></td>
            <td><%= data.getString("complaint_description") %></td>
            <td><%= data.getString("user_first_name") %></td>
            <td><%= data.getString("complaint_date") %></td>
            <td><a href="ViewComplaints.jsp?did=<%= data.getString("complaint_id") %>">Reply Now</a></td>
        </tr>
        <% } %>
    </table>
</body>
<%@include file="Foot.jsp" %>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
