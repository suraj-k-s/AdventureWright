
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("btn_login") != null) {

        String email = request.getParameter("txt_email");
        String password = request.getParameter("txt_password");

        String selAdmin = "select * from tbl_admin where admin_email='" + email + "' and admin_password='" + password + "'";
        ResultSet resultAdmin = con.selectCommand(selAdmin);

        String selUser = "select * from tbl_user where user_email='" + email + "' and user_password='" + password + "'";
        ResultSet resultUser = con.selectCommand(selUser);

        String selGuide = "select * from tbl_guide where guide_email='" + email + "' and guide_password='" + password + "' and guide_status='1'";
        ResultSet resultGuide = con.selectCommand(selGuide);

        if (resultAdmin.next()) {
            session.setAttribute("aid", resultAdmin.getString("admin_id"));
            session.setAttribute("adminname", resultAdmin.getString("admin_name"));
            response.sendRedirect("../Admin/HomePage.jsp");
        } else if (resultUser.next()) {

            session.setAttribute("uid", resultUser.getString("user_id"));
            session.setAttribute("userfirstname", resultUser.getString("user_first_name"));
            session.setAttribute("useremail", resultUser.getString("user_email"));
            session.setAttribute("userlastname", resultUser.getString("user_last_name"));
            response.sendRedirect("../User/HomePage.jsp");

        } else if (resultGuide.next()) {

            session.setAttribute("gid", resultGuide.getString("guide_id"));
            session.setAttribute("guidefirstname", resultGuide.getString("guide_first_name"));
            session.setAttribute("guidelastname", resultGuide.getString("guide_last_name"));
            session.setAttribute("guideemail", resultGuide.getString("guide_email"));
            response.sendRedirect("../Guide/HomePage.jsp");
        } else {
            out.println("Please enter a valid email and password");
        }

    }


%>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>AdventureWright::Login</title>
    </head>
    <%@include file="Head.jsp" %>

    <body>
        <h2>Login</h2>
        <form id="form1" name="form1" method="post" action="">
            <table width="403" border="1" align="center">
                <tr>
                    <td width="134" height="44">Email</td>
                    <td width="253"><label for="txt_email"></label>
                        <input type="email" name="txt_email" id="txt_email" /></td>
                </tr>
                <tr>
                    <td height="29">Password</td>
                    <td><label for="txt_password"></label>
                        <input type="password" name="txt_password" id="txt_password" /></td>
                </tr>
                <tr>
                    <td height="31" colspan="2" align="center"><input type="submit" name="btn_login" id="btn_login" value="Login" /></td>
                </tr>

            </table>
        </form>
    </body>
    <%@include file="Foot.jsp" %>
</html>