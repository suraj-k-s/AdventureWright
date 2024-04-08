<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%@ include file="../Assets/Connection/Connection.jsp" %>
<%@ include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Travelget: User bookings</title>
</head>

<body background="url('')">
    <h2> On Going In Hours </h2>
    <table width="511" height="137" border="1">
        <tr>
            <td>Sl number</td>
            <td>Package</td>
            <td>Guide</td>
            <td>Booking date</td>
            <td>Boooked date</td>
            <td>Action</td>
        </tr>
        <%
            String userid = (String) session.getAttribute("uid");
            String sel = "select * from tbl_packagebooking p inner join tbl_package pq on pq.package_id=p.package_id where user_id='" + userid + "' and booking_status='1' order by booking_id desc";
            ResultSet data = con.selectCommand(sel);
            int i = 0;
            while (data.next()) {
                i++;
                String package_name = data.getString("package_name");
                String guide_status = data.getString("guide_status");
                String guide_info = "";
                if (guide_status.equals("Yes")) {
                    if (data.getInt("guide_id") == 0) {
                        guide_info = "Your guide will be assigned soon";
                    } else {
                        int guide_id = data.getInt("guide_id");
                        String selqry = "select * from tbl_guide where guide_id='" + guide_id + "'";
                        ResultSet data1 = con.selectCommand(selqry);
                        if (data1.next()) {
                            String guide_first_name = data1.getString("guide_first_name");
                            String guide_contact = data1.getString("guide_contact");
                            guide_info = "<p>Name: " + guide_first_name + "</p><p>Contact: " + guide_contact + "</p>";
                        }
                    }
                } else {
                    guide_info = "Sorry you did not request for a guide assistance";
                }
                %>
                <tr>
                    <td><%= i %></td>
                    <td><%= package_name %></td>
                    <td><%= guide_info %></td>
                    <td><%= data.getString("booking_date") %></td>
                    <td><%= data.getString("booking_to_date") %></td>
                    <td><a href="Reasonforcancellation.jsp?breject=<%= data.getInt("booking_id") %>&pid=<%= data.getInt("package_id") %>">Cancel</a></td>
                </tr>
            <% } %>
    </table>
</body>
<%@ include file="Foot.jsp" %>
</html>
