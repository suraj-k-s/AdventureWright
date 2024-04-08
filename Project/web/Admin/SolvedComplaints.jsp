<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    String selQry = "select * from tbl_complaint p inner join tbl_user q on p.user_id=q.user_id where p.complaint_status='1'";
    ResultSet data = con.selectCommand(selQry);
%>

<%@include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>UserComplaints</title>
</head>

<body>
<a href="ViewComplaints.jsp">Go to previous page</a>
<table width="776" height="83" border="1" style="margin-left: 330px;">
  <tr>
    <td width="152" height="26">Serial number</td>
    <td width="167">Title</td>
    <td width="129">Complaint</td>
    <td width="129">Posted Date</td>
    <td width="228">User name</td>
    <td width="66">Reply</td>
    <td width="228">Reply Date</td>
  </tr>
  <%  
    int i = 0;
    while (data.next()) {
        i++;
  %>
  <tr>
    <td height="49"><%= i %></td>
    <td><%= data.getString("complaint_title") %></td>
    <td><%= data.getString("complaint_description") %></td>
    <td><%= data.getString("complaint_date") %></td>
    <td><%= data.getString("user_first_name") %></td>
    <td><%= data.getString("complaint_reply") %></td>
    <td><%= data.getString("complaint_reply_date") %></td>
  </tr>
  <%  
    }
  %>
</table>
</body>
<%@include file="Foot.jsp" %>
</html>
