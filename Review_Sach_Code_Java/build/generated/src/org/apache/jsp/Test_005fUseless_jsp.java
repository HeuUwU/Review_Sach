package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Test_005fUseless_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <style>\n");
      out.write("        .modal {\n");
      out.write("            display: none;\n");
      out.write("            position: fixed;\n");
      out.write("            z-index: 999;\n");
      out.write("            padding-top: 10%;\n");
      out.write("            left: 0;\n");
      out.write("            top: 0;\n");
      out.write("            width: 100%;\n");
      out.write("            height: 100%;\n");
      out.write("            overflow: auto;\n");
      out.write("            background-color: rgb(0,0,0);\n");
      out.write("            background-color: rgba(0,0,0,0.9);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .modal-content {\n");
      out.write("            margin: auto;\n");
      out.write("            display: block;\n");
      out.write("            width: 80%;\n");
      out.write("            max-width: 700px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .modal-content img {\n");
      out.write("            width: 100%;\n");
      out.write("            height: auto;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .close {\n");
      out.write("            position: absolute;\n");
      out.write("            top: 15px;\n");
      out.write("            right: 35px;\n");
      out.write("            color: #f1f1f1;\n");
      out.write("            font-size: 40px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            transition: 0.3s;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .close:hover,\n");
      out.write("        .close:focus {\n");
      out.write("            color: #bbb;\n");
      out.write("            text-decoration: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .prev,\n");
      out.write("        .next {\n");
      out.write("            position: absolute;\n");
      out.write("            top: 50%;\n");
      out.write("            font-size: 30px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            padding: 10px;\n");
      out.write("            background-color: rgba(255, 255, 255, 0.3);\n");
      out.write("            color: #fff;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: 0.3s;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .prev:hover,\n");
      out.write("        .next:hover {\n");
      out.write("            background-color: rgba(255, 255, 255, 0.5);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .prev {\n");
      out.write("            left: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .next {\n");
      out.write("            right: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .alt-text {\n");
      out.write("            margin-top: 10px;\n");
      out.write("            color: #fff;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <img class=\"img-fluid\" src=\"img/book/image1.jpg\" alt=\"Quyen 1\" onclick=\"displayModal('img/book/image1.jpg', 'Quyen 1', 0)\">\n");
      out.write("    <img class=\"img-fluid\" src=\"img/book/image2.jpg\" alt=\"Quyen 2\" onclick=\"displayModal('img/book/image2.jpg', 'Quyen 2', 1)\">\n");
      out.write("    <img class=\"img-fluid\" src=\"img/book/image3.jpg\" alt=\"Quyen 3\" onclick=\"displayModal('img/book/image3.jpg', 'Quyen 3', 2)\">\n");
      out.write("    <img class=\"img-fluid\" src=\"img/book/image4.jpg\" alt=\"Quyen 4\" onclick=\"displayModal('img/book/image4.jpg', 'Quyen 4', 3)\">\n");
      out.write("\n");
      out.write("    <div id=\"modal\" class=\"modal\">\n");
      out.write("        <span class=\"close\" onclick=\"closeModal()\">&times;</span>\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <img id=\"modal-image\" src=\"\">\n");
      out.write("            <a class=\"prev\" onclick=\"changeImage(-1)\">&#10094;</a>\n");
      out.write("            <a class=\"next\" onclick=\"changeImage(1)\">&#10095;</a>\n");
      out.write("            <div id=\"modal-alt\" class=\"alt-text\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        var images = [\n");
      out.write("            'img/book/image1.jpg',\n");
      out.write("            'img/book/image2.jpg',\n");
      out.write("            'img/book/image3.jpg',\n");
      out.write("            'img/book/image4.jpg'\n");
      out.write("        ];\n");
      out.write("\n");
      out.write("        var altTexts = [\n");
      out.write("            'Quyen 1',\n");
      out.write("            'Quyen 2',\n");
      out.write("            'Quyen 3',\n");
      out.write("            'Quyen 4'\n");
      out.write("        ];\n");
      out.write("\n");
      out.write("        var currentImageIndex = 0;\n");
      out.write("\n");
      out.write("        function displayModal(imageSrc, altText, index) {\n");
      out.write("            var modal = document.getElementById(\"modal\");\n");
      out.write("            var modalImage = document.getElementById(\"modal-image\");\n");
      out.write("            var modalAlt = document.getElementById(\"modal-alt\");\n");
      out.write("            modal.style.display = \"block\";\n");
      out.write("            modalImage.src = imageSrc;\n");
      out.write("            modalAlt.textContent = altText;\n");
      out.write("            currentImageIndex = index;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function closeModal() {\n");
      out.write("            var modal = document.getElementById(\"modal\");\n");
      out.write("            modal.style.display = \"none\";\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function changeImage(direction) {\n");
      out.write("            currentImageIndex += direction;\n");
      out.write("\n");
      out.write("            if (currentImageIndex < 0) {\n");
      out.write("                currentImageIndex = images.length - 1;\n");
      out.write("            } else if (currentImageIndex >= images.length) {\n");
      out.write("                currentImageIndex = 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            var modalImage = document.getElementById(\"modal-image\");\n");
      out.write("            var modalAlt = document.getElementById(\"modal-alt\");\n");
      out.write("            modalImage.src = images[currentImageIndex];\n");
      out.write("            modalAlt.textContent = altTexts[currentImageIndex];\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
