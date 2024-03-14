<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("did") != null) {
        String delqry = "delete from tbl_admin where admin_id ='" + request.getParameter("did") + "'";
        if (con.executeCommand(delqry)) {
            response.sendRedirect("Admin.jsp");
        }
    }


%>






<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
    </head>

    <body>
        <form id="form1" name="form1" method="post" action="../Assets/ActionPages/AdminActionPages.jsp" enctype="multipart/form-data">
            <table width="296" border="1" align="center">
                <tr>
                    <td width="110">Name</td>
                    <td width="74"><label for="txt_adminname"></label>
                        <input type="text" name="txt_adminname" id="txt_adminname" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><label for="txt_email"></label>
                        <input type="email" name="txt_email" id="txt_email" /></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><label for="txt_contact"></label>
                        <input type="text" name="txt_contact" id="txt_contact" />        <label for="btn_contact"></label></td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td><label for="img_photo"></label>
                        <input type="file" name="txt_file" id="txt_file" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><p>
                            <label for="txt_password"></label>
                        </p>
                        <p>
                            <label for="txt_password2"></label>
                            <input type="password" name="txt_password" id="txt_password2" />
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                        <input type="reset" name="btn_clear" id="btn_clear" value="Clear" />
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <br />
            <table width="478" border="1" align="center">
                <tr>
                    <td width="73">Sl number</td>
                    <td width="65">Name</td>
                    <td width="93">email</td>
                    <td width="82">contact</td>
                    <td width="82">Profile</td>
                    <td width="45">Password</td>
                    <td width="80">Action</td>
                </tr>
                <%                    String selqry = "select * from tbl_admin";
                    ResultSet rs = con.selectCommand(selqry);
                    int i = 0;
                    while (rs.next()) {

                        i++;

                %>
                <tr>
                    <td><%=i%> </td>
                    <td><%=rs.getString("admin_name")%>  </td>
                    <td><%=rs.getString("admin_email")%>   </td>
                    <td><%=rs.getString("admin_contact")%>    </td>
                    <td><img src="../Assets/Files/<%=rs.getString("admin_image")%>" width="75" height="75" /></td>
                    <td><%=rs.getString("admin_password")%>    </td>

                    <td> <a href="Admin.jsp?did=<%=rs.getString("admin_id")%>">Delete</a> </td>
                </tr>
                <%
                    }
                %>
            </table>
            <p>&nbsp;</p>
        </form>
    </body>
    <%@include file="Foot.jsp" %>
</html>