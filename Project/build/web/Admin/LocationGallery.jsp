
<%@include file="Head.jsp" %>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("did") != null) {
        String value = request.getParameter("did");
        String delQry = "delete from tbl_location_gallery where location_gallery_id=" + value ;
        if (con.executeCommand(delQry)) {
            response.sendRedirect("LocationGallery.jsp");
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
        <form enctype="multipart/form-data" method="post" action="../Assets/ActionPages/LocationGallery.jsp"  name="form1" id="form1">
            <table width="367"border="1" style="margin-left: 300px;">
                <tr>

                    <td width="173">Place</td>
                    <td width="178"><label for="sel_place"></label>
                        <select name="sel_place" id="sel_place" onchange="getPlace(this.value)">
                            <option>--SELECT--</option>
                            <%
                                String sel = "select * from tbl_place ";
                                ResultSet row = con.selectCommand(sel);
                                while (row.next()) {
                            %>
                            <option value="<%=row.getString("place_id")%>">
                                <%=row.getString("place_name")%>
                            </option>
                            <%
                                }
                            %>
                        </select></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td><label for="sel_location"></label>
                        <select name="sel_location" id="sel_location">
                            <option>--SELECT---</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Caption</td>
                    <td><label for="txt_caption"></label>
                        <input type="text" name="txt_caption" id="txt_caption" /></td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><label for="img_image"></label>
                        <input type="file" name="img_image" id="img_image" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                        <input type="reset" name="btn_reset" id="btn_reset" value="Clear" /></td>
                </tr>
            </table>
            <table width="635" height="250" border="1" style="margin-left: 300px;">
                <tr>
                    <td>Sl.no</td>
                    <td>Place</td>
                    <td>Location</td>
                    <td>Caption</td>
                    <td>Image</td>
                    <td>Action</td>
                </tr>
                <%
                    String selQry = "select * from tbl_location_gallery p inner join tbl_location q on p.location_id=q.location_id inner join tbl_place r on q.place_id=r.place_id ";

                    ResultSet rs = con.selectCommand(selQry);
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("place_name")%></td>
                    <td><%=rs.getString("location_name")%></td>
                    <td><%=rs.getString("location_gallery_caption")%></td>
                    <td><img src="../Assets/Files/<%=rs.getString("location_gallery_image")%>" width="75" height="76" /></td>
                    <td><a href="LocationGallery.jsp?did=<%=rs.getString("location_gallery_id")%>">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </form>
    </body>
                <%@include file="Foot.jsp" %>
    <script src="../Assets/Jquery/jQuery.js"></script>
    <script>
                            function getPlace(did)
                            {

                                $.ajax({
                                    url: "../Assets/AjaxPages/AjaxLocation.jsp?did=" + did,
                                    success: function(html) {
                                        $("#sel_location").html(html);
                                    }
                                });
                            }
    </script>
</html>