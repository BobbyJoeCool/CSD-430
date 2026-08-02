<%--
  customTagsDemo.jsp

  Shows three custom JSP tags in use on a page:

    1) ct:formatDate  - reformats any input date to YYYY/MM/DD
    2) ct:loggedIn    - widget that only shows to a logged-in user
    3) ct:managerOnly - widget that only shows to a user with the
                         MANAGER role

  Each tag's behavior is implemented by a Java class in tags/, and the
  taglib directive below points the "ct" prefix at customTags.tld, the
  XML file that connects each <ct:...> tag name to its Java class.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="ct" uri="/WEB-INF/tlds/customTags.tld" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Custom Tag Demo</title>
</head>
<body>

<h1>Custom Tag Demo</h1>

<%--
  There is no real login/roles backend for this demo, so the state that
  the widgets below react to is faked here by setting two session
  attributes directly. In a real app these would be set by a login
  servlet after checking a database, not by the JSP itself.
--%>
<% session.setAttribute("loggedInUser", "rbreutzmann"); %>
<% session.setAttribute("userRole", "MANAGER"); %>

<h2>1) Date Formatter Tag</h2>
<%-- Takes a date in whatever pattern it was given and prints it back
     out in YYYY/MM/DD, no matter what pattern it came in as. --%>
<p>
    American format 07/30/2026 becomes:
    <ct:formatDate value="07/30/2026" pattern="MM/dd/yyyy" />
</p>
<p>
    ISO format 2026-07-30 becomes:
    <ct:formatDate value="2026-07-30" pattern="yyyy-MM-dd" />
</p>

<h2>2) Logged-In Widget</h2>
<%-- Everything inside only renders if session attribute "loggedInUser" is set --%>
<ct:loggedIn>
    <div class="widget">Welcome back! This widget only shows to logged-in users.</div>
</ct:loggedIn>

<h2>3) Manager-Only Widget</h2>
<%-- Everything inside only renders if session attribute "userRole" equals "MANAGER" --%>
<ct:managerOnly>
    <div class="widget">Manager dashboard link: this widget only shows to users with the MANAGER role.</div>
</ct:managerOnly>

</body>
</html>
