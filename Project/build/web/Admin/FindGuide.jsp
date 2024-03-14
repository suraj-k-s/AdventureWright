



<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>

    <body>
        <table width="900" border="1" style="margin-left: 330px;">
            <tr>
                <td width="246">sl number</td>
                <td width="313">Guide Name</td>
                <td width="209">Guide contact</td>
                <td width="158">Guide photo</td>
                <td width="196">Guide place</td>
                <td width="196">Action</td>
            </tr>
            <%      String selQry = "select *  from tbl_guide p inner join tbl_place pk on pk.place_id=p.place_id inner join tbl_district pkl on pkl.district_id=pk.district_id  where pkl.district_id ='$bookedplaceid' and guide_status='1'";
                ResultSet data = con.selectCommand(selQry);
                int i = 0;
                while (data.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=data.getString("guide_first_name")%><%=data.getString("guide_last_name")%></td>
                <td><%=data.getString("guide_last_name")%></td>
                <td> <img src="../Assets/Files/Guide/Photo/<%=data.getString("guide_photo")%>" width="75" height="76"/></td>
                <td><%=data.getString("place_name")%></td>
                <td><%
                    String sel = "select COALESCE(count(*),0) as num from tbl_packagebooking where guide_id='" + data.getString("guide_id") + "' and booking_to_date='" + data.getString("bookeddate") + "'";
                    ResultSet rs = con.selectCommand(sel);
                    rs.next();
                    if (rs.getInt("num") == 0) {
                    %>

                    <a href="FindGuide.php?gid=<%=data.getString("guide_id")%>&pid=<%=request.getParameter("pid")%>&bid=<%=request.getParameter("bid")%>&bookeddate=<%=request.getParameter("bookeddate")%>">Assign</a></td>
                    <%
                        } else {
                            out.print("Already Assigned");
                        }
                    %>
            </tr>
            <%
                }
            %>
            </td>
        </table>
        <%
            if (request.getParameter("gid") != null) {
                String guideid = request.getParameter("gid");
                String updqry = "update tbl_packagebooking set guide_id='" + guideid + "', booking_status='3' where booking_id='" + request.getParameter("bid") + "'";
                if (con.executeCommand(updqry)) {
        %>
        <script>
            alert("Assigned !!");
            window.location = "AssignedList.php";
        </script>
        <%
                }
            }
        %>
    </body>
</html>