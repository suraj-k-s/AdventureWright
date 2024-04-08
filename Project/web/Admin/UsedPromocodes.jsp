<%@ page import="java.sql.ResultSet" %>

<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    try {
        ResultSet data = null;
        String selqry = "select * from tbl_usedpromocode p inner join tbl_user q on p.user_id=q.user_id";
        data = con.selectCommand(selqry);
        int i = 0;
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
</head>
<body>
    <table width="776" height="83" border="1" style="margin-left: 390px; margin-top: 50px;">
        <tr>
            <td>Sl.number</td>
            <td>Promocode</td>
            <td>User name</td>
        </tr>
        <% 
            while (data.next()) {
                i++;
        %>
        <tr>
            <td><%= i %></td>
            <td><%= data.getString("promocode_name") %></td>
            <td><%= data.getString("user_first_name") %></td>
        </tr>
        <% } %>
    </table>
</body>
<%@include file="Foot.jsp" %>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
