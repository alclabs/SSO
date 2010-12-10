<%@ page import="com.controlj.green.addonsupport.AddOnInfo" %>
<%@ page import="com.controlj.green.addonsupport.web.Link" %>
<%@ page import="com.controlj.green.addonsupport.web.UITree" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head><title>Simple jsp page</title></head>

  <body>
    <div>Congratulations, you are now logged in as:
       <%= AddOnInfo.getAddOnInfo().getUserSystemConnection(request).getOperatorLoginName() %>
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