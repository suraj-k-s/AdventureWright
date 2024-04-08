<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    if(request.getParameter("btn_submit") != null) {
        String packageId_submit = request.getParameter("sel_package_submit");
        String locationId_submit = request.getParameter("sel_location_submit");
        String insQry = "insert into tbl_package_location(package_id, location_id) values('" + packageId_submit + "','" + locationId_submit + "')";
        con.executeCommand(insQry);
    }

    if(request.getParameter("did") != null) {
        String value = request.getParameter("did");
        String delQry = "delete from tbl_package_location where package_location_id='" + value + "'";
        if(con.executeCommand(delQry)) {
            response.sendRedirect("PackageLocation.jsp");
        }
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
</head>

<body>
    <a href="HomePage.jsp">Home</a>
    <form id="form1" name="form1" method="post" action="">
        <br />
        <br />
        <table width="335" height="256" border="1"  style="margin-left: 330px;">
            <tr>
                <td width="168">Select Package</td>
                <td width="151">
                    <label for="sel_package_submit"></label>
                    <select name="sel_package_submit" id="sel_package_submit">
                        <option>--SELECT--</option>
                        <%  
                            String selQry_package = "select * from tbl_package";
                            ResultSet result_package = con.selectCommand(selQry_package);
                            while(result_package.next()) {
                        %>
                            <option value="<%= result_package.getString("package_id") %>"><%= result_package.getString("package_name") %></option>
                        <%
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Select Place</td>
                <td>
                    <label for="sel_place_submit"></label>
                    <select name="sel_place_submit" id="sel_place_submit" onchange="getPlace(this.value)">
                        <option>--SELECT--</option>
                        <%
                            String selQry_place = "select * from tbl_place";
                            ResultSet result_place = con.selectCommand(selQry_place);
                            while(result_place.next()) {
                        %>
                            <option value="<%= result_place.getString("place_id") %>"><%= result_place.getString("place_name") %></option>
                        <%
                            }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Select Location</td>
                <td>
                    <label for="sel_location_submit"></label>
                    <select name="sel_location_submit" id="sel_location_submit">
                        <option>--SELECT--</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                    <input type="reset" name="btn_clear" id="btn_clear" value="clear" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="852" height="201" border="1"  style="margin-left: 330px;">
            <tr>
                <td>Sl.number</td>
                <td>Package</td>
                <td>Place</td>
                <td>Location</td>
                <td>Action</td>
            </tr>
            <%
                String selQry_table = "select * from tbl_package_location p inner join tbl_location q on p.location_id=q.location_id inner join tbl_place d on q.place_id=d.place_id inner join tbl_package t on p.package_id=t.package_id";
                ResultSet data = con.selectCommand(selQry_table);
                int i = 0;
                while(data.next()) {
                    i++;
            %>
                <tr>
                    <td><%= i %></td>
                    <td><%= data.getString("package_name") %></td>
                    <td><%= data.getString("place_name") %></td>
                    <td><%= data.getString("location_name") %></td>
                    <td><a href="PackageLocation.jsp?did=<%= data.getString("package_location_id") %>">Delete</a></td>
                </tr>
            <%
                }
            %>
        </table>
    </form>
</body>
<script src="../Assets/Jquery/jQuery.js"></script>
<script>
    function getPlace(did) {
        $.ajax({
            url: "../Assets/AjaxPages/AjaxLocation.jsp?did=" + did,
            success: function(html) {
                $("#sel_location_submit").html(html);
            }
        });
    }
</script>
<%@include file="Foot.jsp" %>
</html>
