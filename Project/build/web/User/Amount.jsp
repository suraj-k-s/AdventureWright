<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con" />

<%@ include file="Head.jsp" %>

<%-- JSP code block --%>
<%
    String userid = (String) request.getSession().getAttribute("uid");
    String finalrate = request.getParameter("amount");
       double ratewithoutpromo = 0;
        double ratewithpromo = 0;

    if (request.getParameter("promo") != null) {
        String count = request.getParameter("count");
        String promocode_name1 = request.getParameter("promo");
        String bookid = request.getParameter("bid1");

        String selqry1 = "select * from tbl_promocode where promocode_name='" + promocode_name1 + "'";
        ResultSet row12 = con.selectCommand(selqry1);
        row12.next();

        String selqry = "select * from tbl_packagebooking p inner join tbl_package q on p.package_id=q.package_id where booking_id='" + bookid + "' and user_id='" + userid + "'";
        ResultSet data12 = con.selectCommand(selqry);
        data12.next();

         ratewithoutpromo = data12.getDouble("package_rate") * Integer.parseInt(count);
         ratewithpromo = row12.getDouble("promocode_rate");
        finalrate = Double.toString(ratewithoutpromo - ratewithpromo);
    }

    if (request.getParameter("btn_check") != null) {
        String validpromo = request.getParameter("txt_promo");

        String selqry = "select * from tbl_promocode where promocode_name='" + validpromo + "'";
        ResultSet result = con.selectCommand(selqry);

        if (result.next()) {
            String selqryused = "select  COALESCE(count(*),0) as num from tbl_usedpromocode p inner join tbl_user q on p.user_id=q.user_id where promocode_name='" + validpromo + "' and p.user_id='" + userid + "'";
            ResultSet data = con.selectCommand(selqryused);
            data.next();

            if (data.getInt("num") > 0) {
                out.println("<script>alert('Dear user please try a new promo code you have already used this !!');</script>");
            } else {
                out.println("<script>alert('Dear user your promocode has been approved !!');</script>");

                String insqry = "insert into tbl_usedpromocode (promocode_name,user_id) values ('" + validpromo + "','" + userid + "')";
                con.executeCommand(insqry);

                String bid1 = (String) request.getParameter("bid1");
                response.sendRedirect("Amount.jsp?count=" + request.getParameter("count") + "&promo=" + validpromo + "&bid1=" + bid1);
                return;
            }
        } else {
            out.println("<script>alert('Dear user please enter a valid promo code !!');</script>");
        }
    }

    if (request.getParameter("btn_submit") != null) {
        String selqry = "select max(booking_id) as id from tbl_packagebooking";
        ResultSet data = con.selectCommand(selqry);
        data.next();

        String bid = data.getString("id");
        response.sendRedirect("Payment.jsp?bid=" + bid + "&rate=" + finalrate);
        return;
    }
%>
<%-- End of JSP code block --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
        <table width="500" border="1" >
            <tr>
                <td width="142">Apply Promocode</td>
                <td width="320" align="center">
                    <input type="text" name="txt_promo" id="txt_promo" />
                </td>
                <td width="125">
                    <input type="submit" name="btn_check" id="btn_check" value="Check" style="width: 90%;" />
                </td>
            </tr>
        </table>
    </form>

    <form id="form2" name="form2" method="post" action="">
        <% if (request.getParameter("promo") != null) { %>
        <table width="500" border="1">
            <tr>
                <td width="73">Amount to be Paid</td>
                <td width="10">Promocode discount  </td>
                <td width="95">Total Amount after promo code</td>
            </tr>
            <tr>
                <td><%= ratewithoutpromo %></td>
                <td><%= ratewithpromo %></td>
                <td><%= finalrate %></td>
            </tr>
       
        <% } %>

            <tr>
                <td align="center">
                    <input type="submit" name="btn_submit" id="btn_submit" value="Submit" style="width:60%;" />
                </td>
            </tr>
        </table>

        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%@ include file="Foot.jsp" %>
    </form>
</body>
</html>
