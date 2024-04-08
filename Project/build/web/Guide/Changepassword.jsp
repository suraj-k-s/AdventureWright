<%@ page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con" />

<%
    if (request.getParameter("btn_Change") != null) {
        String email = (String) session.getAttribute("guideemail");
        String guideid = (String) session.getAttribute("gid");
        String currentpwd = request.getParameter("txt_password");
        String newpassword = request.getParameter("txt_newpassword");
        String confirmpassword = request.getParameter("txt_confirmnewpassword");
        
        String selQry = "select * from tbl_guide where guide_email='" + email + "' and guide_password='" + currentpwd + "' and guide_id='" + guideid + "'";
        ResultSet resultguide = con.selectCommand(selQry);
        
        if (resultguide.next()) {
            if (newpassword.equals(confirmpassword)) {
                String upQry = "update tbl_guide set guide_password='" + newpassword + "' where guide_id='" + guideid + "'";
                if (con.executeCommand(upQry)) {
%>
                    Password Changed...
<%
                } else {
%>
                    Database insertion failure
<%
                }
            } else {
%>
                Password not same...
<%
            }
        } else {
%>
            Please type correct current password
<%
        }
    }
%>

<%@ include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="312" height="187" border="1">
    <tr>
      <td>Current password</td>
      <td><input type="text" name="txt_password" id="txt_password" /></td>
    </tr>
    <tr>
      <td>New password</td>
      <td><input type="text" name="txt_newpassword" id="txt_newpassword" /></td>
    </tr>
    <tr>
      <td>Confirm new password</td>
      <td><input type="text" name="txt_confirmnewpassword" id="txt_confirmnewpassword" /></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="btn_Change" id="btn_change" value="Change" />
      <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel" /></td>
    </tr>
  </table>
  <a href="HomePage.jsp">Back to homepage</a>
</form>
</body>
<%@ include file="Foot.jsp" %>
</html>
