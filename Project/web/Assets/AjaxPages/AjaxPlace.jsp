
<option>----select---</option>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_place where district_id = " + request.getParameter("did");
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {
%>
<option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
<%
    }

%>