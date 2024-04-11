<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"/>

<%
    // Retrieving guide ID from session
    String guideid = (String)session.getAttribute("gid");

    // Fetching guide details from the database
    String selQry = "select * from tbl_guide where guide_id='" + guideid + "'";
    ResultSet resultguide = con.selectCommand(selQry);
    resultguide.next(); // Move the cursor to the first row

    // Retrieving guide details from the result set
    String firstName = resultguide.getString("guide_first_name");
    String lastName = resultguide.getString("guide_last_name");
    String contact = resultguide.getString("guide_contact");
    String address = resultguide.getString("guide_address");

    if (request.getParameter("btn_change") != null) {
        // Retrieving updated values from the form
        firstName = request.getParameter("txt_first_name");
        lastName = request.getParameter("txt_last_name");
        contact = request.getParameter("txt_contact");
        address = request.getParameter("txt_address");

        // Updating guide details in the database
        String upQry = "update tbl_guide set guide_first_name='" + firstName + "', guide_last_name='" + lastName + "', guide_contact='" + contact + "', guide_address='" + address + "' where guide_id='" + guideid + "'";
        if (con.executeCommand(upQry)) {
            response.sendRedirect("Myprofile.jsp");
        }
    }
%>

<%@include file="Head.jsp" %>

<form id="form1" name="form1" method="post" action="">
  <table width="345" height="169" border="1">
    <tr>
      <td width="172">First Name</td>
      <td width="157">
        <input type="text" name="txt_first_name" id="txt_first_name" value="<%= firstName %>" />
      </td>
    </tr>
    <tr>
      <td width="172">Last Name</td>
      <td width="157">
        <input type="text" name="txt_last_name" id="txt_last_name" value="<%= lastName %>" />
      </td>
    </tr>
    <tr>
      <td>Contact</td>
      <td>
        <input type="text" name="txt_contact" id="txt_contact" value="<%= contact %>" />
      </td>
    </tr>
    <tr>
      <td>Address</td>
      <td>
        <textarea name="txt_address" id="txt_address" cols="45" rows="5"><%= address %></textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" name="btn_change" id="btn_change" value="Change" />
        <input type="reset" name="btn_cancel" id="btn_cancel" value="Cancel" />
      </td>
    </tr>
  </table>
</form>

<%@include file="Foot.jsp" %>
