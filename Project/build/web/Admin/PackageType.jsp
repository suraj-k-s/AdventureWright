<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    if(request.getParameter("btnsave") != null) {
        String typeName = request.getParameter("txttype");
        
        String insQry = "insert into tbl_package_type(package_type_name) values('" + typeName + "')";
        if(con.executeCommand(insQry)) {
            response.sendRedirect("PackageType.jsp");
        } else {
            out.println("Database insertion failure");
        }
    }

    if(request.getParameter("did") != null) {
        String delQry = "delete from tbl_package_type where package_type_id = " + request.getParameter("did");
        if(con.executeCommand(delQry)) {
            response.sendRedirect("PackageType.jsp");
        }
    }
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Travel-Get:PackageType</title>
</head>

<body>
<a href="HomePage.jsp">Home</a>
<form id="form1" name="form1" method="post" action="">
  <table width="294" height="76" border="1" align="center">
    <tr>
      <td>Package Type</td>
      <td><input type="text" name="txttype" id="txttype" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="btnsave" id="btnsave" value="Submit" />
      <input type="reset" name="btncancel" id="btncancel" value="Cancel" /></td>
    </tr>
  </table>
  <label for="txttype"></label>
</form>

<table width="200" border="1" align="center">
    <tr>
      <td>Sl.nO</td>
      <td>PackageType</td>
      <td>Action</td>
    </tr>
    <%
        String selqry = "select * from tbl_package_type";
        ResultSet data = con.selectCommand(selqry);
        int i = 0;
        while(data.next()) {
            i++;
    %>
    <tr>
      <td height="23"><%= i %></td>
      <td><%= data.getString("package_type_name") %></td>
      <td><a href="PackageType.jsp?did=<%= data.getString("package_type_id") %>">Delete</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
<%@include file="Foot.jsp" %>
</html>
