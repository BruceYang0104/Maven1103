<HTML>
    <HEAD>
        <TITLE>Using the Application Object</TITLE>
    </HEAD>

    <BODY>
        <H1>Using the Application Object</H1>
       <jsp:useBean id="bean1" class="beans.Counter"  scope="session" />
       <jsp:useBean id="bean2" class="beans.Counter"  scope="application" />
          <% 
            bean1.setCounter(bean1.getCounter() + 1);
            bean2.setCounter(bean2.getCounter() + 1);
          %>

        You have visited this page.<BR>
        The counter value is: <jsp:getProperty  name="bean1"  property="counter" /> times.
        <BR>
        This page has been visited by all users.<BR>
        The counter value is: <jsp:getProperty  name="bean2"  property="counter" /> times.
    </BODY>
</HTML>
