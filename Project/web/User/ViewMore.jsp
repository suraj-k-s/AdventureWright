<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Package booking details</title>
    </head>

    <body>
        <%
            
            String packageid = request.getParameter("pid");
            session.setAttribute("pack", packageid);
            String userid = (String) session.getAttribute("uid");

            String selQry = "select * from tbl_package p inner join tbl_package_type q on q.package_type_id=p.package_type_id where package_id='" + packageid + "'";
            ResultSet data = con.selectCommand(selQry);
            if (data.next()) {
        %>
        <%
            if (request.getParameter("btn_submit") != null) {
                if (session.getAttribute("uid") == null || session.getAttribute("uid").equals("null")) {
                    response.sendRedirect("../Guest/Login.jsp");
                } else {
                    String guideservice = request.getParameter("rad_guide");
                    String insQry = "insert into tbl_packagebooking(person_count,package_id,booking_date,booking_to_date,user_id,guide_status)values('" + request.getParameter("txt_count") + "','" + session.getAttribute("pack") + "',curdate(),'" + request.getParameter("txtd") + "','" + session.getAttribute("uid") + "','" + guideservice + "')";

                    if (con.executeCommand(insQry)) {
                        String selQryMax = "select max(booking_id) as id from tbl_packagebooking";
                        ResultSet dataMax = con.selectCommand(selQryMax);
                        if (dataMax.next()) {
                            response.sendRedirect("Calculation.jsp?bid=" + dataMax.getString("id") + "&count=" + request.getParameter("txt_count"));
                        }
                    }
                }
            }
        %>
        <%@ include file="Head.jsp" %>
        <form id="form1" name="form1" method="post" action="">
            <table width="700" border="1" align="center">
                <tr>
                    <td colspan="2"  align="center">
                        <img src="../Assets/Files/PackageImage/<%= data.getString("package_photo")%>" width="400" height="200" />
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%= data.getString("package_name")%></td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td><%= data.getString("package_rate")%></td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td><%= data.getString("package_details")%></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><%= data.getString("package_type_name")%></td>
                </tr>
                <tr>
                    <td>Want guide Service?</td>
                    <td><input type="radio" name="rad_guide" id="txt_male" value="Yes" />
                        Yes
                        <input type="radio" name="rad_guide" id="txt_female" value="No" />
                        No
                    </td>
                </tr>
                <tr>
                    <td>Booking To</td>
                    <td><input type="date" name="txtd"  /></td>
                </tr>
                <tr>
                    <td>Persons</td>
                    <td><input type="number" name="txt_count"   /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Book Now" style=" width: 60%;"/></td>
                </tr>
            </table>
            <table  width="1500" align="center" border="1">
                <tr>
                    <%
                        String sel = "select * from tbl_package_location pl inner join tbl_location l on l.location_id=pl.location_id inner join tbl_location_gallery lg on l.location_id=lg.location_id where package_id='" + request.getParameter("pid") + "'";
                        ResultSet dataLoc = con.selectCommand(sel);
                        while (dataLoc.next()) {
                    %>
                    <td width="300" align="center">
                        <%= dataLoc.getString("location_name")%><br />
                        <img src="../Assets/Files/<%= dataLoc.getString("location_gallery_image")%>" width="400" height="200" /><br />
                        <%= dataLoc.getString("location_gallery_caption")%><br />
                    </td>
                    <%
                        }
                    %>
                </tr>
            </table>
        </form>
        <%
            }
        %>
    </body>
    <%@ include file="Foot.jsp" %>
</html>
