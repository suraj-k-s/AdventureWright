<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>

<%
    String username = (String) session.getAttribute("userfirstname");
    if (request.getParameter("btn_submit") != null) {
        String bid = request.getParameter("breject");
        String reason = request.getParameter("txt_reason");
        String userId = (String) session.getAttribute("uid");

        String insQry = "insert into tbl_package_cancellation (cancellation_reason,user_id,user_name,booking_id,package_id,cancellation_date) values('" + reason + "', '" + userId + "', '" + username + "', '" + bid + "', '" + request.getParameter("pid") + "', curdate())";
        boolean success = con.executeCommand(insQry);

        if (bid != null && success) {
            String updqry = "update tbl_packagebooking set booking_status='2' where booking_id='" + bid + "'";
            boolean updateSuccess = con.executeCommand(updqry);
            if (updateSuccess) {
                response.sendRedirect("MyBooking.jsp");
            }
        }
    }

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>
 <%@ include file="Head.jsp" %>
    <body>
        <form id="form1" name="form1" method="post" action="">
            <table width="200" border="1">
                <tr>
                    <td>Reason for cancellation</td>
                </tr>
                <tr>
                    <td><textarea name="txt_reason" id="txt_reason6" cols="45" rows="5"></textarea></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" /></td>
                </tr>
            </table>
        </form>
    </body>
    <%@ include file="Foot.jsp" %>
</html>
