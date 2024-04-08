
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>



<%@include file="Head.jsp" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Travel-Get: Guide registration</title>
        </head>

        <body>
            <form id="form1" name="form1" method="post" action="../Assets/ActionPages/GuiedUploadAction.jsp" enctype="multipart/form-data">
                <table width="465" border="1">
                    <tr>
                        <td>First name</td>
                        <td><label for="txt_firstname"></label>
                            <input type="text" name="txt_firstname" id="txt_firstname" /></td>
                    </tr>
                    <tr>
                        <td width="201">Last name</td>
                        <td width="248"><label for="txt_lastname"></label>
                            <input type="text" name="txt_lastname" id="txt_lastname" /></td>
                    </tr>
                    <tr>
                        <td>Contact</td>
                        <td><label for="txt_contact"></label>
                            <input type="text" name="txt_contact" id="txt_contact"  pattern="[0-9]{10,10}"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <label for="txt_email"></label>
                            <input type="email" name="txt_email" id="txt_email" />
                        </td>
                    </tr>
                    <tr>
                        <td height="41">Address</td>
                        <td><label for="txt_address"></label>
                            <label for="txt_address"></label>
                            <textarea name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="radio" name="rad_gender" id="txt_male" value="Male" />
                            Male
                            <label for="txt_male"></label>
                            <input type="radio" name="rad_gender" id="txt_female" value="Female" />
                            <label for="txt_female">Female</label></td>
                    </tr>
                    <tr>
                        <td>Photo</td>
                        <td><label for="img_photo"></label>
                            <input type="file" name="img_photo" id="img_photo" /></td>
                    </tr>
                    <tr>
                        <td>Proof</td>
                        <td><label for="img_proof"></label>
                            <input type="file" name="img_proof" id="img_proof" /></td>
                    </tr>
                    <tr>
                        <td>Experience</td>
                        <td><label for="txt_experience"></label>
                            <textarea name="txt_experience" id="txt_experience" cols="45" rows="5"></textarea></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><label for="txt_password"></label>
                            <input type="password" name="txt_password" id="txt_password" /></td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td><label for="sel_district"></label>
                            <select name="sel_district" id="sel_district"  onchange="getPlace(this.value)">
                                <option>----select---</option>
                            <%
                                String selqry = "select * from tbl_district";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                            <%
                                }
                            %>
                        </select></td>
                </tr>
                <tr>
                    <td>Place</td>
                    <td><label for="sel_place"></label>
                        <select name="sel_place" id="sel_place" >
                            <option>---SELECT---</option>

                        </select></td>
                </tr>
                <tr>
                    <td height="28" colspan="2" align="center"><input type="submit" name="btn_submit" id="btn_submit" value="Submit" />
                        <input type="submit" name="btn_clear" id="btn_clear" value="Clear" /></td>
                </tr>
            </table>
        </form>
    </body>
    
    <script src="../Assets/Jquery/jQuery.js"></script>
    <script>
                                function getPlace(did)
                                {

                                    $.ajax({
                                        url: "../Assets/AjaxPages/AjaxPlace.jsp?did=" + did,
                                        success: function(html) {
                                            $("#sel_place").html(html);
                                        }
                                    });
                                }
    </script>
</html>
<%@include file="Foot.jsp" %>