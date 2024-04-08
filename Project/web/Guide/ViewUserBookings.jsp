<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con" />

<%@ include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="772" height="126" border="1">
    <tr>
      <td>Sl number </td>
      <td>Name of user</td>
      <td>Package</td>
      <td>Booked date</td>
      <td>Booking date</td>
      <td>Action</td>
    </tr>
    <%
    if(request.getParameter("bid") != null) {
        String bid = request.getParameter("bid");
        String sts = request.getParameter("sts");
        String updqry = "update tbl_packagebooking set booking_status='" + sts + "' where booking_id='" + bid + "'";
        con.executeCommand(updqry);
        response.sendRedirect("ViewUserBookings.jsp");
    }
    
    String sel = "select * from tbl_packagebooking p inner join tbl_user ps on ps.user_id=p.user_id inner join tbl_package psq on psq.package_id=p.package_id where booking_status>=3";
    ResultSet data = con.selectCommand(sel);
    int i = 0;
    while(data.next()) {
        i++;
    %>
    <tr>
        <td><%= i %></td>
        <td><%= data.getString("user_first_name") %> <%= data.getString("user_last_name") %></td>
        <td><%= data.getString("package_name") %></td>
        <td><%= data.getString("booking_date") %></td>
        <td><%= data.getString("booking_to_date") %></td>
        <td>
            <%
            if(data.getInt("booking_status") == 3) {
            %>
            Assigned/<a href="ViewUserBookings.jsp?bid=<%= data.getString("booking_id") %>&sts=4">Start</a>
            <%
            } else if(data.getInt("booking_status") == 4) {
            %>
            Started/<a href="ViewUserBookings.jsp?bid=<%= data.getString("booking_id") %>&sts=5">End</a>
            <%
            } else if(data.getInt("booking_status") == 5) {
            %>
            Trip Ended
            <%
            }
            %>
        </td>
    </tr>
    <%
    }
    %>
  </table>
</form>
</body>
<%@ include file="Foot.jsp" %>
</html>
