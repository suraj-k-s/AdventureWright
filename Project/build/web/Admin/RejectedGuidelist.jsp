<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@include file="Head.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
    </head>
    <%

        if (request.getParameter("rejid") != null) {

            String upQry = "update tbl_guide set guide_status='1' where guide_id='" + request.getParameter("rejid") + "'";
            if (con.executeCommand(upQry)) {
                response.sendRedirect("AcceptedGuidelist.jsp");
            }
        }

    %>
    <body>
        <table width="200" border="1" style="margin-left: 280px;" >
            <tr>
                <td>Sl.nO</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>District</td>
                <td>place</td>

                <td>Gender</td>
                <td>Contact</td>
                <td>Email</td> 
                <td>Photo</td>
                <td>Proof</td>
                <td>Action</td>


            </tr>
            <%                            String selqry = "select * from tbl_guide g inner join tbl_place p on g.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where g.guide_status='2'";
                ResultSet rs = con.selectCommand(selqry);
                int i = 0;
                while (rs.next()) {
                    i++;
            %>
            <tr>
                <td height="23"><%=i%></td>


                <td><%=rs.getString("guide_first_name")%></td>
                <td><%=rs.getString("guide_last_name")%></td>

                <td><%=rs.getString("district_name")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("guide_gender")%></td>
                <td><%=rs.getString("guide_contact")%></td>
                <td><%=rs.getString("guide_email")%></td>
                <td><img src="../Assets/Files/<%=rs.getString("guide_photo")%>" width="75" height="76" /></td>
                <td><img src="../Assets/Files/<%=rs.getString("guide_proof")%>" width="75" height="76" /></td>

                <td><a href="AcceptedGuidelist.jsp?rejid=<%=rs.getString("guide_id")%>">Accept</a></td>
            </tr>
            <%
                }
            %>
        </table>

    </body>
    <%@include  file="Foot.jsp" %>
</html>