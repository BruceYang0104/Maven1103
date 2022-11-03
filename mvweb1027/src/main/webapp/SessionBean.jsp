<HTML>
    <HEAD>
        <TITLE>Using Beans and Session Scope</TITLE>
    </HEAD>
    <BODY>
        <H1>Using Beans and Session Scope</H1>
        <jsp:useBean id="bean1" class="beans.Counter"  scope="session" />
        <% 
        	bean1.setCounter(bean1.getCounter() + 1);
        %>
    The counter value is: <jsp:getProperty  name="bean1"  property="counter" /> 
    </BODY>
</HTML>
