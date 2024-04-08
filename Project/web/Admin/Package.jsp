<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    if (request.getParameter("did") != null) {
        String delqry = "delete from tbl_package where package_id=" + request.getParameter("did");
        if (con.executeCommand(delqry)) {
            response.sendRedirect("Package.jsp");
        }
    }

%>
<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Travel-Get: Package</title>
    </head>

    <body>

        <form id="form1" name="form1" method="post" action="../Assets/ActionPages/PackageActionPage.jsp" enctype="multipart/form-data">

            <table width="584" border="1"  style="margin-left: 330px;">

                <tr>
                    <td>Package type</td>
                    <td><label for="sel_packagetype"></label>
                        <select name="sel_packagetype" id="sel_packagetype">
                            <option>----Select---</option>
                            <% String selQry = "select * from tbl_package_type";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("package_type_id")%>"><%=rs.getString("package_type_name")%></option>
                            <%
                                }
                            %>
                        </select></td>

                </tr>
                <tr>
                    <td>Package District</td>
                    <td><label for="sel_district"></label>
                        <select name="sel_district" id="sel_district">
                            <option>----Select---</option>
                            <% String selQry1 = "select * from tbl_district";
                                ResultSet rs1 = con.selectCommand(selQry1);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("district_id")%>"><%=rs1.getString("district_name")%></option>
                            <%
                                }
                            %>
                        </select></td>

                </tr>
                <tr>
                    <td width="232">Package name</td>
                    <td width="203"><label for="txt_packagename"></label>
                        <input type="text" name="txt_packagename" id="txt_packagename" /></td>
                </tr>
                <tr>
                    <td> Rate</td>
                    <td><label for="txt_rate"></label>
                        <input type="text" name="txt_rate" id="txt_rate" /></td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td><label for="txt_details"></label>
                        <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                </tr>
                <tr>
                    <td>Cover Photo</td>
                    <td><label for="img_photo"></label>
                        <input type="file" name="img_photo" id="img_photo" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                        <input type="reset" name="btn_clear" id="btn_clear" value="Clear" /></td>
                </tr>
            </table>
        </form>
        <br>
            <br>
                <table width="696" height="133" border="1"  style="margin-left: 330px;">
                    <tr>
                        <td width="122">Sl.number</td>
                        <td width="142">Package name</td>
                        <td width="95">Rate</td>
                        <td width="104">Details</td>
                        <td width="95">Package type</td>
                        <td width="95">Cover photo</td>
                        <td width="98">Action</td>
                    </tr>
                    <%
                        int i = 0;
                        String selQry11 = "select * from tbl_package p inner join tbl_package_type t on p.package_type_id=t.package_type_id";
                        ResultSet rs11 = con.selectCommand(selQry11);
                        while (rs11.next()) {
                            i++;
                    %>
                    <tr>
                        <td height="76"><%=i%></td>
                        <td><%=rs11.getString("package_name")%></td>
                        <td><%=rs11.getString("package_rate")%> </td>
                        <td><%=rs11.getString("package_details")%></td>
                        <td><%=rs11.getString("package_type_name")%></td>
                        <td><img src="../Assets/Files/<%=rs11.getString("package_photo")%>" width="75" height="76" /></td>
                        <td><a href="Package.jsp?did=<%=rs11.getString("package_id")%>">Delete</a></td>
                    </tr>
                    <%
                        }
                    %>
                </table>

                </body>
                <%@include file="Foot.jsp" %>
                </html>