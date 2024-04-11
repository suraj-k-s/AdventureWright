<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Head.jsp" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Travel-Get: New guide list</title>
        </head>
    <%
    
        if (request.getParameter("acid") != null) {
        
            String aceptid = request.getParameter("acid");
            String upQry = "update tbl_guide set guide_status='1' where guide_id='" + aceptid + "'";
            if (con.executeCommand(upQry)) {
            
                response.sendRedirect("NewGuidelist.jsp");
            }
        }
    
        
         if (request.getParameter("rejid") != null) {
        
            String rejid = request.getParameter("rejid");
            String upQry = "update tbl_guide set guide_status='2' where guide_id='" + rejid + "'";
            if (con.executeCommand(upQry)) {
            
                response.sendRedirect("NewGuidelist.jsp");
            }
        }
    
     %>
    <body>
        
        <table width="200" border="1" style="margin-left: 330px;">
            <tr>
                <td>Sl.nO</td>
                <td>District</td>
                <td>place</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Gender</td>
                <td>Contact</td>
                <td>Email</td>
                <td>Address</td>
                <td>Photo</td>
                <td>Proof</td>
                <td>Action</td>


            </tr>
            <%
                String selqry = "select * from tbl_guide g inner join tbl_place p on g.place_id=p.place_id inner join tbl_district d on p.district_id=d.district_id where g.guide_status='0'";
                ResultSet rs = con.selectCommand(selqry);
                int i = 0;
                while (rs.next()) {
            
                    i++;
            %>
            <tr>
                <td height="23"><%=i%></td>
                <td><%=rs.getString("district_name")%></td>
                <td><%=rs.getString("place_name")%></td>
                <td><%=rs.getString("guide_first_name")%></td>
                <td><%=rs.getString("guide_last_name")%></td>
                <td><%=rs.getString("guide_gender")%></td>
                <td><%=rs.getString("guide_contact")%></td>
                <td><%=rs.getString("guide_email")%></td>
                <td><%=rs.getString("guide_address")%></td>
                <td><img src="../Assets/Files/<%=rs.getString("guide_photo")%>" width="75" height="76" /></td>
                <td><img src="../Assets/Files/<%=rs.getString("guide_proof")%>" width="75" height="75" /></td>

                <td><a href="NewGuidelist.jsp?acid=<%=rs.getString("guide_id")%>">Accept</a>
                    /<a href="NewGuidelist.jsp?rejid=<%=rs.getString("guide_id")%>">Reject</a></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
            <%@include file="Foot.jsp" %>
</html>