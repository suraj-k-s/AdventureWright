<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ include file="Head.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%
    String userid = (String) session.getAttribute("uid");
    String selQry = "select * from tbl_user where user_id='" + userid + "'";
    ResultSet resultadmin = con.selectCommand(selQry);
    if(resultadmin.next()) {
        String first_name = resultadmin.getString("user_first_name");
        String last_name = resultadmin.getString("user_last_name");
        String contact = resultadmin.getString("user_contact");
        String address = resultadmin.getString("user_address");

        if (request.getParameter("btn_change") != null) {
            String new_first_name = request.getParameter("txt_firstname");
            String new_last_name = request.getParameter("txt_lastname");
            String new_contact = request.getParameter("txt_contact");
            String new_address = request.getParameter("txt_address");

            String upQry = "update tbl_user set user_first_name='" + new_first_name + "', user_last_name='" + new_last_name + "', user_contact='" + new_contact + "', user_address='" + new_address + "' where user_id='" + userid + "'";
            if (con.executeCommand(upQry)) {
                response.sendRedirect("Myprofile.jsp");
            }
        }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>TravelGet:User edit profile</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<form id="form1" name="form1" method="post" action="">
    <table width="345" height="169" border="1">
        <tr>
            <td width="172">First Name</td>
            <td width="157"><input type="text" name="txt_firstname" id="txt_firstname" value="<%= first_name %>" /></td>
        </tr>
        <tr>
            <td width="172">Last Name</td>
            <td width="157"><input type="text" name="txt_lastname" id="txt_lastname" value="<%= last_name %>" /></td>
        </tr>
        <tr>
            <td>Contact</td>
            <td><input type="text" name="txt_contact" id="txt_contact" value="<%= contact %>"/></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><textarea name="txt_address" id="txt_address" cols="45" rows="5"><%= address %></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="btn_change" id="btn_change" value="Change" />
                <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel" /></td>
        </tr>
    </table>
</form>
<%@include file="Foot.jsp" %>
</body>
</html>
<%
    }
%>
