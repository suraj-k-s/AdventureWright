


<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>


<%@include file="Head.jsp" %>

<html>
    <body>
        <table width="888" style="margin-left: 330px;">
            <tr>
                <td>Sl number</td>
                <td>Nameof user</td>
                <td>Package</td>
                <td>Booked date</td>
                <td>Booking date</td>
                <td>Guide name</td>
                <td>Status</td>
            </tr>
            <%
                String sel = "select *  from tbl_packagebooking p inner join tbl_package ps on ps.package_id=p.package_id inner join tbl_user u on u.user_id=p.user_id inner join tbl_guide pkl on pkl.guide_id=p.guide_id where booking_status>=3";
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
                <td><%=rs.getString("booking_date")%></td>
                <td><%=rs.getString("booking_to_date")%></td>
                <td><%=rs.getString("guide_first_name")%></td>	
                <td><%if (rs.getString("booking_status").equals("3")) {
                        out.print("Assigned");
                    } else if (rs.getString("booking_status").equals("4")) {
                        out.print("Trip ongoing");
                    } else if (rs.getString("booking_status").equals("5")) {
                        out.print("trip ended");
                    }


                    %></td>	
            </tr>
            <%                                    }
            %>
        </table>


    </body>
    <%@include file="Foot.jsp" %>
</html>