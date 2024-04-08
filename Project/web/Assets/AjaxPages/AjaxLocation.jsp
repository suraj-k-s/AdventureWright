
<option>----select---</option>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_location where place_id = " + request.getParameter("did");
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {
%>
<option value="<%=rs.getString("location_id")%>"><%=rs.getString("location_name")%></option>
<%
    }

%>