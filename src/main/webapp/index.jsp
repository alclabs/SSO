<%@ page import="com.controlj.green.addonsupport.web.Link" %>
<%@ page import="com.controlj.green.addonsupport.web.UITree" %>
<%@ page import="com.controlj.green.addonsupport.access.DirectAccess" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  ~ Copyright (c) 2010 Automated Logic Corporation
  ~
  ~ Permission is hereby granted, free of charge, to any person obtaining a copy
  ~ of this software and associated documentation files (the "Software"), to deal
  ~ in the Software without restriction, including without limitation the rights
  ~ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  ~ copies of the Software, and to permit persons to whom the Software is
  ~ furnished to do so, subject to the following conditions:
  ~
  ~ The above copyright notice and this permission notice shall be included in
  ~ all copies or substantial portions of the Software.
  ~
  ~ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  ~ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  ~ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  ~ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  ~ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  ~ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  ~ THE SOFTWARE.
  --%>

<html>
  <head><title>Simple jsp page</title></head>

  <body>
    <div>Congratulations, you are now logged in as:
       <%= DirectAccess.getDirectAccess().getUserSystemConnection(request).getOperatorLoginName() %>
    </div>
    <div style="margin-top:30px;">
        <form method="POST" action="loginout/logout.jsp">
            <input type="submit" value="Log out"> <br />
        </form>
    </div>
    <div style="margin-top:30px;">
        <a href="second.jsp">Try a protected page</a> - needs the &quot;Access User Category 1&quot; privilege
    </div>
    <div style="padding-left:20px; margin-top:30px;">
        <div>Some test links into the server</div>
        <div><a target="_blank" href="<%= Link.getURL(request, UITree.GEO, "")%>">Geo Root - Popup</a></div>
        <div><a target="_blank" href="<%= Link.getURL(request, UITree.NET, "")%>">Net Root - Popup</a></div>
        <div><a target="_blank" href="<%= Link.getURL(request, UITree.CFG, "")%>">CONFIG Root - Popup</a></div>
        <div><a target="_blank" href="<%= Link.getURL(request, UITree.GRP, "")%>">GRP Root - Popup</a></div>
        <br/>
        <div><a href="<%= Link.getURL(request, UITree.CFG, "/trees/config/system", "properties", "default", "default", "communications")%>">Config / Properties / Communications Tab - In Frame</a></div>
        <div><a href="<%= Link.getURL(request, UITree.NET, "/trees/network", "reports", "network", "~module-version", "view")%>">Network Tree / Module Status Report - In Frame</a></div>
    </div>
  </body>
</html>