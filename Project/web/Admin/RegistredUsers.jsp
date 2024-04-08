<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    String selQry = "select * from tbl_user u inner join tbl_place p on u.user_place_id=p.place_id";
    ResultSet data = con.selectCommand(selQry);
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Travelget: Registred Users</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
<a href="HomePage.jsp">Back to Homepage</a>
  <table width="1100" height="265" border="1" align="right">
    <tr>
      <td>Serial number</td>
      <td>User first name</td>
      <td>User last name</td>
      <td>User contact</td>
      <td>User email</td>
      <td>User dob</td>
      <td>User gender</td>
      <td>User place</td>
      <td>User photo</td>
      <td>User proof</td>
    </tr>
    <% 
        int i = 0;
        while (data.next()) {
            i++;
    %>
    <tr>
      <td><%= i %></td>
      <td><%= data.getString("user_first_name") %></td>
      <td><%= data.getString("user_last_name") %></td>
      <td><%= data.getString("user_contact") %></td>
      <td><%= data.getString("user_email") %></td>
      <td><%= data.getString("user_dob") %></td>
      <td><%= data.getString("user_gender") %></td>
      <td><%= data.getString("place_name") %></td>
      <td><img src="../Assets/Files/<%= data.getString("user_photo") %>" width="75" height="76" /></td>
      <td><img src="../Assets/Files/<%= data.getString("user_proof") %>" width="75" height="76" /></td>
    </tr>
    <% } %>
  </table>
</form>
</body>
<%@include file="Foot.jsp" %>
</html>
