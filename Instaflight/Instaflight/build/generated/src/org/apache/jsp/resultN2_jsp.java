package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class resultN2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("application/xml");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
      out.write("<?xml-stylesheet type=\"text/xsl\" href=\"page.xsl\"?>\n");
      out.write("<page title=\"Instaflight\">\n");
      out.write("    <navigation>\n");
      out.write("        <result>\n");
      out.write("            <flight id=\"0\" origin=\"Sydney\" destination=\"Perth\" departTime=\"2017-05-27\" returnDate=\"2017-06-28\" price=\"500\" type=\"economy\" seat=\"100\"/>\n");
      out.write("            <flight id=\"1\" origin=\"Sydney\" destination=\"Perth\" departTime=\"2017-05-27\" returnDate=\"2017-06-28\" price=\"500\" type=\"economy\" seat=\"100\"/>\n");
      out.write("            <flight id=\"2\" origin=\"Sydney\" destination=\"Perth\" departTime=\"2017-05-27\" returnDate=\"2017-06-28\" price=\"500\" type=\"economy\" seat=\"100\"/>\n");
      out.write("        </result>\n");
      out.write("    </navigation>\n");
      out.write("    \n");
      out.write("</page>\n");
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
