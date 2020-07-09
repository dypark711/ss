<%@page language="java" contentType="text/html; charset=utf-8"%>
<html>
<%
  session = request.getSession(true);
  
  Integer ssCnt = (Integer) session.getAttribute("count");
  if (ssCnt == null) 
    ssCnt = new Integer(1);
  else 
    ssCnt = new Integer(ssCnt.intValue() + 1);
  session.setAttribute("count", ssCnt);
  
  Integer cnt = (Integer) application.getAttribute("count");
  if (cnt == null)
    cnt = new Integer(1);
  else
    cnt = new Integer(cnt.intValue() + 1);
  application.setAttribute("count", cnt);
 
  System.out.println(ssCnt);
%>
<body>
<h3>Request Info</h3>
Request Count : <%= cnt %>
<h3>Session Info</h3>
Session ID : <%= session.getId() %><br>
Session Count : <%= ssCnt %><br>
Session Created Time : <%= new java.util.Date(session.getCreationTime()).toString() %><br>
Session Last Accessed Time : <%= new java.util.Date(session.getLastAccessedTime()).toString() %><br>
</body>
</html>