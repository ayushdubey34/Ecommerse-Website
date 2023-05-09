
<%@page import="com.mycompany.mycart1.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file = "components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file = "components/navbar.jsp" %>
        Hello World!
        <h1>Creating session factory</h1>
        <%
            out.println(FactoryProvider.getFactory());
        %>
        
    </body>

