package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import uts.wsd.Flight;
import uts.wsd.Airline;
import uts.wsd.User;

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

      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?><?xml-stylesheet type=\"text/xsl\" href=\"pageStyling.xsl\"?>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<page title=\"Result\">\n");
      out.write("    ");
User user = (User)session.getAttribute("user");
        String loginCheck = " ";
    
      out.write("\n");
      out.write("        ");

            if (user.getName().equals("")){
                loginCheck = "disabled";
        
      out.write("\n");
      out.write("        <visitor/>\n");
      out.write("        ");
}else if(user.getName().equals("Admin")){
      out.write("\n");
      out.write("        <admin name=\"");
      out.print(user.getName());
      out.write("\"/>\n");
      out.write("        ");
}else{
      out.write("\n");
      out.write("        <customer name=\"");
      out.print(user.getName());
      out.write("\"/>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        ");
String filePath = application.getRealPath("WEB-INF/flights.xml");
      out.write("\n");
      out.write("        ");
      uts.wsd.AirlineJaxbDAO airlineDao = null;
      synchronized (application) {
        airlineDao = (uts.wsd.AirlineJaxbDAO) _jspx_page_context.getAttribute("airlineDao", PageContext.APPLICATION_SCOPE);
        if (airlineDao == null){
          airlineDao = new uts.wsd.AirlineJaxbDAO();
          _jspx_page_context.setAttribute("airlineDao", airlineDao, PageContext.APPLICATION_SCOPE);
          out.write("\n");
          out.write("            ");
          org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("airlineDao"), "filePath",
filePath);
          out.write("\n");
          out.write("        ");
        }
      }
      out.write("\n");
      out.write("        <result>\n");
      out.write("            ");
Airline airline = airlineDao.getAirline();
            int i = 0;
        for (Flight flight : airline.getFlights()){
            
      out.write("\n");
      out.write("        <flight id=\"");
      out.print(airline.getFlightbyID(i).getID());
      out.write("\" \n");
      out.write("                origin=\"");
      out.print(airline.getFlightbyID(i).getOrigin());
      out.write("\" \n");
      out.write("                destination=\"");
      out.print(airline.getFlightbyID(i).getDestination());
      out.write("\" \n");
      out.write("                departTime=\"");
      out.print(airline.getFlightbyID(i).getDepartTime());
      out.write("\" \n");
      out.write("                returnTime=\"");
      out.print(airline.getFlightbyID(i).getReturnTime());
      out.write("\" \n");
      out.write("                price=\"");
      out.print(airline.getFlightbyID(i).getPrice());
      out.write("\" \n");
      out.write("                type=\"");
      out.print(airline.getFlightbyID(i).getType());
      out.write("\" \n");
      out.write("                seat=\"");
      out.print(airline.getFlightbyID(i).getSeat());
      out.write("\"\n");
      out.write("                loginCheck=\"");
      out.print(loginCheck);
      out.write("\"/>\n");
      out.write("        ");
i++;}
      out.write("\n");
      out.write("        </result>\n");
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
