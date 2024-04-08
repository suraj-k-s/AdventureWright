<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    if (request.getParameter("baccept") != null) {
        String bookingid = request.getParameter("baccept");
        String updQry = "update tbl_packagebooking set booking_status='1' where booking_id='" + bookingid + "'";
        if (con.executeCommand(updQry)) {
            response.sendRedirect("RejectedBookings.jsp");
        }
    }
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
</head>
<br />
<br />
<br />
<table width="888" height="118" border="1" style="margin-left: 330px;">
    <tr>
        <td>Sl number</td>
        <td>Name of user</td>
        <td>Package</td>
        <td>Guide</td>
        <td>Booked date</td>
        <td>Booking date</td>
        <td>Reason for cancellation</td>
        <td>Cancellation date</td>
    </tr>
    <%  
        String sel = "select * from tbl_packagebooking p inner join tbl_package ps on ps.package_id=p.package_id inner join tbl_user u on u.user_id=p.user_id inner join tbl_package_cancellation plk on plk.booking_id=p.booking_id where p.booking_status='2'";
        ResultSet data = con.selectCommand(sel);
        int i = 0;
        while (data.next()) {
            i++;
    %>
    <tr>
        <td><%= i %></td>
        <td><%= data.getString("user_first_name") %> <%= data.getString("user_last_name") %></td>
        <td><%= data.getString("package_name") %></td>
        <td><%= data.getString("guide_status") %></td>
        <td><%= data.getString("booking_date") %></td>
        <td><%= data.getString("booking_to_date") %></td>
        <td><%= data.getString("cancellation_reason") %></td>
        <td><%= data.getString("cancellation_date") %></td>
    </tr>
    <%  
        }
    %>
</table>
</body>
<%@include file="Foot.jsp" %>
</html>
