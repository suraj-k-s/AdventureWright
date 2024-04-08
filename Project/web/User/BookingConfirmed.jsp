<jsp:useBean class="DB.ConnectionClass" id="con" />
<%@ include file="Head.jsp" %>
<%
    String username = (String)session.getAttribute("userfirstname");
    out.println("Dear " + username + " has been confirmed by Travel Get");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<p></p>

<p><a href="HomePage.jsp">Go to HomePage</a></p>
</body>
<%@ include file="Foot.jsp" %>
</html>
