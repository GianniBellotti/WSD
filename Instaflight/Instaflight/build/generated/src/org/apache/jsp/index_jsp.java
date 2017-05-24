package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import uts.wsd.User;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("        <title>Home</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
User user = (User)session.getAttribute("user");
      out.write("\n");
      out.write("        ");

            if (user == null){
        
      out.write("\n");
      out.write("        \n");
      out.write("        <p><a href=\"login.jsp\" >Login</a> | <a href=\"register.jsp\">Register</a></p>\n");
      out.write("    \n");
      out.write("        ");
}else if(user.getName().equals("Admin")){
      out.write("\n");
      out.write("            <table>\n");
      out.write("            <tr><td><i>Logged in as &lt;");
      out.print(user.getName());
      out.write("&gt;</i></td>\n");
      out.write("                <td><a href=\"logout.jsp\">Logout</a></td><td><a href=\"admin.jsp\">Manage Flight</a></td></tr>\n");
      out.write("            </table>\n");
      out.write("        ");
}else{
      out.write("\n");
      out.write("        <table>\n");
      out.write("            <tr><td><i>Logged in as &lt;");
      out.print(user.getName());
      out.write("&gt;</i></td>\n");
      out.write("            <td><a href=\"logout.jsp\">Logout</a></td></tr>\n");
      out.write("        </table>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        <h1>Search</h1>\n");
      out.write("        <form action=\"result.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr><td>From</td><td><input type=\"text\" name=\"from\" size=\"25\"></td><td>To</td><td><input type=\"text\" name=\"to\" size=\"25\"></td></tr>\n");
      out.write("                \n");
      out.write("                <tr><td>Departure Date</td><td><input id=\"date\" min=\"2017-05-22\" type=\"date\"></td></tr>\n");
      out.write("                \n");
      out.write("                <tr><td>Return Date</td><td><input id=\"date\" min=\"2017-05-22\" type=\"date\"></td></tr>\n");
      out.write("                <tr><td>Type</td><td><input type=\"radio\" name=\"type\" value=\"economy\" checked> Economy<br>\n");
      out.write("                        <input type=\"radio\" name=\"type\" value=\"business\"> Business<br></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <input type=\"submit\" value=\"Search\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
