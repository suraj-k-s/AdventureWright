package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/Foot.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');


    if (request.getParameter("did") != null) {
        String delqry = "delete from tbl_admin where admin_id ='" + request.getParameter("did") + "'";
        if (con.executeCommand(delqry)) {
            response.sendRedirect("Admin.jsp");
        }
    }



      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <form id=\"form1\" name=\"form1\" method=\"post\" action=\"../Assets/ActionPages/AdminActionPages.jsp\" enctype=\"multipart/form-data\">\n");
      out.write("            <table width=\"296\" border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"110\">Name</td>\n");
      out.write("                    <td width=\"74\"><label for=\"txt_adminname\"></label>\n");
      out.write("                        <input type=\"text\" name=\"txt_adminname\" id=\"txt_adminname\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td><label for=\"txt_email\"></label>\n");
      out.write("                        <input type=\"email\" name=\"txt_email\" id=\"txt_email\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td><label for=\"txt_contact\"></label>\n");
      out.write("                        <input type=\"text\" name=\"txt_contact\" id=\"txt_contact\" />        <label for=\"btn_contact\"></label></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td><label for=\"img_photo\"></label>\n");
      out.write("                        <input type=\"file\" name=\"img_profile\" id=\"img_photo\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><p>\n");
      out.write("                            <label for=\"txt_password\"></label>\n");
      out.write("                        </p>\n");
      out.write("                        <p>\n");
      out.write("                            <label for=\"txt_password2\"></label>\n");
      out.write("                            <input type=\"password\" name=\"txt_password\" id=\"txt_password2\" />\n");
      out.write("                        </p>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"btn_submit\" id=\"btn_submit\" value=\"Submit\" />\n");
      out.write("                        <input type=\"reset\" name=\"btn_clear\" id=\"btn_clear\" value=\"Clear\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <p>&nbsp;</p>\n");
      out.write("            <p>&nbsp;</p>\n");
      out.write("            <br />\n");
      out.write("            <table width=\"478\" border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td width=\"73\">Sl number</td>\n");
      out.write("                    <td width=\"65\">Name</td>\n");
      out.write("                    <td width=\"93\">email</td>\n");
      out.write("                    <td width=\"82\">contact</td>\n");
      out.write("                    <td width=\"82\">Profile</td>\n");
      out.write("                    <td width=\"45\">Password</td>\n");
      out.write("                    <td width=\"80\">Action</td>\n");
      out.write("                </tr>\n");
      out.write("                ");
                    String selqry = "select * from tbl_admin";
                    ResultSet rs = con.selectCommand(selqry);
                    int i = 0;
                    while (rs.next()) {

                        i++;

                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("admin_name"));
      out.write("  </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("admin_email"));
      out.write("   </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("admin_contact"));
      out.write("    </td>\n");
      out.write("                    <td><img src=\"../Assets/Files/");
      out.print(rs.getString("admin_image"));
      out.write("\" width=\"75\" height=\"75\" /></td>\n");
      out.write("                    <td>");
      out.print(rs.getString("admin_password"));
      out.write("    </td>\n");
      out.write("\n");
      out.write("                    <td> <a href=\"Admin.jsp?did=");
      out.print(rs.getString("admin_id"));
      out.write("\">Delete</a> </td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("            <p>&nbsp;</p>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
