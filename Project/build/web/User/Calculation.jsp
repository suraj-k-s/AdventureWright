<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ include file="Head.jsp" %>
<%
    session.setAttribute("userid", session.getAttribute("uid"));
    String userid = (String) session.getAttribute("userid");

    // Query to fetch package booking details for the logged-in user
    String selqry = "select * from tbl_packagebooking p inner join tbl_user q on p.user_id=q.user_id inner join tbl_package pl on pl.package_id=p.package_id inner join tbl_district plk on pl.district_id=plk.district_id where q.user_id='" + userid + "'";
    ResultSet data = con.selectCommand(selqry);
    if (data.next()) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>
    <body>
        <form id="form1" name="form1" method="post" action="">
            <table width="400" border="1">
                <tr>
                    <td width="126">Package Name</td>
                    <td width="58"><%= data.getString("package_name")%></td>
                </tr>
                <tr>
                    <td>District</td>
                    <td><%= data.getString("district_name")%></td>
                </tr>
                <tr>
                    <td>Booking to date</td>
                    <td><%= data.getString("booking_to_date")%></td>
                </tr>
                <tr>
                    <td>Guide Service</td>
                    <td><%= data.getString("guide_status")%></td>
                </tr>
                <tr>
                    <td>Customer Name</td>
                    <td><%= data.getString("user_first_name")%></td>
                </tr>
                <tr>
                    <td>Persons</td>
                    <td><%= request.getParameter("count")%></td>
                </tr>
            </table>
            <table width="300"  border="1">
                <tr>
                    <td>Amount to be paid</td>
                </tr>
                <tr>
                    <td><%= data.getInt("package_rate") * Integer.parseInt(request.getParameter("count"))%></td>
                </tr>
            </table>

            <table width="200" border="1">
                <tr>
                    <td align="center"><input type="submit" name="btn_pay" id="btn_pay" value="Pay" style=" width: 60%;" /></td>
                </tr>
            </table>
        </form>
    </body>
    <%@ include file="Foot.jsp" %>
</html>
<%
    }
    data.close();

    if (request.getParameter("btn_pay") != null) {
        int amount = data.getInt("package_rate") * Integer.parseInt(request.getParameter("count"));
        String selQry = "select max(booking_id) as id from tbl_packagebooking";
        ResultSet data2 = con.selectCommand(selQry);
        if (data2.next()) {
            int bid = data2.getInt("id");
            response.sendRedirect("Amount.jsp?bid=" + bid + "&count=" + request.getParameter("count") + "&amount=" + amount);
        }
        data2.close();
    }
%>
