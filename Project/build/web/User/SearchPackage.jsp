<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con" />
<%
    if (session.getAttribute("uid") != null && !session.getAttribute("uid").equals("null")) {
%>
<%@include file="Head.jsp" %>
<%
} else {
%>
<%@include file="HeadWithoutLogin.jsp" %>
<%
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Travelget:Search package</title>
        <%@ include file="Head.jsp" %>
    </head>
    <body>
        <form id="form1" name="form1" method="post" action="">
            <table  border="1" align="center">
                <tr>
                    <td>Destination</td>
                    <td><input type="text" name="txt_destination" /></td>
                    <td>Package type</td>
                    <td><label for="sel_package_type"></label>
                        <select name="sel_package_type" id="sel_package_type">
                            <option value="">----Select-----</option>
                            <%
                                String selqry = "select * from tbl_package_type";
                                ResultSet data = con.selectCommand(selqry);
                                while (data.next()) {
                            %>
                            <option value="<%= data.getString("package_type_id")%>"><%= data.getString("package_type_name")%></option>
                            <% } %>
                        </select>
                    </td>
                    <td style="width: 200px;" align="center">
                        <input type="submit" value="Search" name="btn_search" style="width: 80%;" />
                    </td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <%
                        if (request.getParameter("btn_search") != null) {
                            String destination = request.getParameter("txt_destination");
                            int i = 0;
                            String packagetypeid = request.getParameter("sel_package_type");
                            String selQry = "select * from tbl_package where true";
                            if (!packagetypeid.equals("")) {
                                selQry += " and package_type_id='" + packagetypeid + "'";
                            }
                            if (!destination.equals("")) {
                                selQry += " and package_name LIKE '%" + destination + "%'";
                            }
                            ResultSet data1 = con.selectCommand(selQry);
                            while (data1.next()) {
                                i++;
                    %>
                    <td>
                        <table border="1" style="margin:10px">
                            <tr>
                                <td colspan="2" align="center">
                                    <img src="../Assets/Files/PackageImage/<%= data1.getString("package_photo")%>" width="120" height="120"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Package</td>
                                <td><%= data1.getString("package_name")%></td>
                            </tr>
                            <tr>
                                <td>Rate</td>
                                <td><%= data1.getString("package_rate")%></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <a href="ViewMore.jsp?pid=<%= data1.getString("package_id")%>">View More</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <%
                                if (i == 4) {
                                    i = 0;
                                    out.println("</tr><tr>");
                                }
                            }
                        }
                    %>
                </tr>
            </table>
        </form>
    </body>
    <%@ include file="Foot.jsp" %>
</html>
