<jsp:useBean class="DB.ConnectionClass" id="con" />
<%

    if (request.getParameter("btn_submit") != null) {
        String title = request.getParameter("txt_title");
        String complaint = request.getParameter("txt_complaint");
        String userid = (String) session.getAttribute("uid");

        String insQry = "insert into tbl_complaint(complaint_title, complaint_description, user_id, complaint_date) values ('" + title + "', '" + complaint + "', '" + userid + "', curdate())";
        con.executeCommand(insQry);
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Travelget: Post complaints</title>
</head>
<%@ include file="Head.jsp" %>
<body>
    <a href="HomePage.jsp">Homepage</a>
    <form id="form1" name="form1" method="post" action="">
        <table width="540"border="1">
            <tr>
                <td width="234">Title</td>
                <td width="290"><input type="text" name="txt_title" id="txt_title" /></td>
            </tr>
            <tr>
                <td>Complaint</td>
                <td><textarea name="txt_complaint" id="txt_complaint" cols="45" rows="5"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                <input type="reset" name="btn_clear" id="btn_clear" value="Clear" /></td>
            </tr>
        </table>
    </form>
</body>
<%@ include file="Foot.jsp" %>
</html>
