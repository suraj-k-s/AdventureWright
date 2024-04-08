<jsp:useBean class="DB.ConnectionClass" id="con" />

<%@ include file="Head.jsp" %>

<%
String email = (String) session.getAttribute("useremail");
String userId = (String) session.getAttribute("uid");

if (request.getParameter("btn_Change") != null) {
    String currentPassword = request.getParameter("txt_password");
    String newPassword = request.getParameter("txt_newpassword");
    String confirmPassword = request.getParameter("txt_confirmnewpassword");

    String selectQuery = "SELECT * FROM tbl_user WHERE user_email=? AND user_password=? AND user_id=?";
    PreparedStatement selectStatement = con.prepareStatement(selectQuery);
    selectStatement.setString(1, email);
    selectStatement.setString(2, currentPassword);
    selectStatement.setString(3, userId);
    ResultSet resultSet = selectStatement.executeQuery();

    if (resultSet.next()) {
        if (newPassword.equals(confirmPassword)) {
            String updateQuery = "UPDATE tbl_user SET user_password=? WHERE user_id=?";
            PreparedStatement updateStatement = con.prepareStatement(updateQuery);
            updateStatement.setString(1, newPassword);
            updateStatement.setString(2, userId);
            int rowsAffected = updateStatement.executeUpdate();
            if (rowsAffected > 0) {
                out.println("Password Changed...");
            } else {
                out.println("Database update failure");
            }
        } else {
            out.println("Passwords do not match");
        }
    } else {
        out.println("Please enter correct current password");
    }
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Travel-Get: Change password</title>
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
        <table width="529" height="170" border="1">
            <tr>
                <td>Current Password</td>
                <td><input type="password" name="txt_password" id="txt_password" /></td>
            </tr>
            <tr>
                <td>New Password</td>
                <td><input type="password" name="txt_newpassword" id="txt_newpassword" /></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="txt_confirmnewpassword" id="txt_confirmnewpassword" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="btn_Change" id="btn_change" value="Change" />
                    <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel" />
                </td>
            </tr>
        </table>
        <a href="HomePage.jsp">Back to homepage</a>
    </form>
    <%@ include file="Foot.jsp" %>
</body>
</html>
