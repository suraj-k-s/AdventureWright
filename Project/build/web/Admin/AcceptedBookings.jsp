<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title> Accepted Bookings</title>
        </head>
    <%@include  file="Head.jsp" %>
    <body>
        <table border="1" style="margin-left: 330px;">
            <tr>
                <td>Sl number</td>
                <td>Nameof user</td>
                <td>Package</td>
                <td>Guide</td>
                <td>Booked date</td>
                <td>Booking date</td>
                <td>Action</td>
            </tr>
            <%
                String sel = "select *  from tbl_packagebooking p inner join tbl_package ps on ps.package_id=p.package_id inner join tbl_user u on u.user_id=p.user_id where booking_status='2'";
                ResultSet rs = con.selectCommand(sel);
                int i = 0;
                while (rs.next()) {
                    i++;
                    String status = rs.getString("guide_status");

            %>
            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("user_first_name")%><%=rs.getString("user_last_name")%></td>
                <td><%=rs.getString("package_name")%></td>
                <td><%=rs.getString("guide_status")%></td>
                <td><%=rs.getString("booking_date")%></td>
                <td><%=rs.getString("booking_to_date")%></td>
                <td>Confirmed
                    <%
                        if (status == "Yes") {
                    %>
                    /
                    <a href="FindGuide.jsp?pid=<%=rs.getString("district_id")%>&bid=<%=rs.getString("booking_id")%>&bookeddate=<%=rs.getString("booking_to_date")%>">Assign Guide</a>
                    <%
                        }
                    %>

                </td>	
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
<%@include  file="Foot.jsp" %>