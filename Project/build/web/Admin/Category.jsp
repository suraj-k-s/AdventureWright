<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title>Untitled Document</title>
        </head>
    <%
        
        if (request.getParameter("btn_save") != null) {
            
            String category = request.getParameter("txt_category");
            
            String ins = "insert into tbl_category(category_name) values('" + category + "')";
            
            if (con.executeCommand(ins)) {
                response.sendRedirect("Category.jsp");
            }
            
        }
        
        if (request.getParameter("id") != null) {
            String del = "delete from tbl_category where category_id = '" + request.getParameter("id") + "'";
            if (con.executeCommand(del)) {
                response.sendRedirect("Category.jsp");
            }
        }
        

    %>
    <%@include file="Head.jsp" %>
    <body>
        <section class="main_content dashboard_part">
            <div class="main_content_iner ">
                <div class="container-fluid p-0">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="QA_section">
                                <!--Form-->
                                <div class="white_box_tittle list_header">
                                    <div class="col-lg-12">
                                        <div class="white_box mb_30">
                                            <div class="box_header ">
                                                <div class="main-title">
                                                    <h3 class="mb-0" >Table Category</h3>
                                                </div>
                                            </div>
                                            <form method="post">
                                                <div class="form-group">
                                                    <label for="txt_category">Category Name</label>
                                                    <input required="" type="text" class="form-control" id="txt_category" name="txt_category" autocomplete="off" />
                                                </div>
                                                <div class="form-group" align="center">
                                                    <input type="submit" class="btn-dark" style="width:100px; border-radius: 10px 5px " name="btn_save" value="Save"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="QA_table mb_30">
                                    <!-- table-responsive -->
                                    <table class="table lms_table_active">
                                        <thead>
                                            <tr style="background-color: #74CBF9">
                                                <td align="center" scope="col">Sl.No</td>
                                                <td align="center" scope="col">Category</td>
                                                <td align="center" scope="col">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int i = 0;
                                                String selQry = "select * from tbl_category";
                                                ResultSet rs = con.selectCommand(selQry);
                                                while (rs.next()) {
                                                    
                                                    i++;

                                            %>
                                            <tr>
                                                <td align="center"><%=i%></td>
                                                <td align="center"><%=rs.getString("category_name")%></td>
                                                <td align="center">
                                                    <a href="Category.jsp?id=<%=rs.getString("category_id")%>" class="status_btn">Delete</a> 
                                                </td> 
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="Foot.jsp" %>
    </body>
</html>