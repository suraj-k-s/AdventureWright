<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    if(request.getParameter("btn_submit") != null) {
        String promocode = request.getParameter("txt_promocode");
        String rate = request.getParameter("txt_rate");
        
        String insQry = "insert into tbl_promocode(promocode_name, promocode_rate) values('" + promocode + "','" + rate + "')";
        if(con.executeCommand(insQry)) {
            // Redirect to some page after successful insertion
        } else {
            out.println("Error occurred while inserting data into the database");
        }
    }
%>

<%@include file="Head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <br />
  <br />
  <br />
  <table width="514" height="200" border="1" align="center">
    <tr>
      <td width="238">Promocode Name</td>
      <td width="260"><input type="text" name="txt_promocode" id="txt_promocode" /></td>
    </tr>
    <tr>
      <td>Amount to be Reduced</td>
      <td><input type="text" name="txt_rate" id="txt_rate" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" /></td>
    </tr>
  </table>
</form>
</body>
<%@include file="Foot.jsp" %>
</html>
