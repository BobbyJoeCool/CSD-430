<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 5 and 6 - Assignment 5.3/6.3
                (carried forward unmodified into Module 7 - Assignment 7.2,
                into Module 8 - Assignment 8.2, and into Module 9 - Assignment 9.2)
    Purpose:    CRUD Read page for the U.S. States database application.
                On GET, displays a dropdown of all state abbreviations from
                the database. On POST, re-displays the dropdown and shows the
                full record for the selected state in a table. All database
                access is handled through DbBean.
    Due Date:   July 5th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Read</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>U.S. States Database</h1>
    <nav><a href="index.jsp">Home</a></nav>
</header>

<main>

    <h2>Look Up a State</h2>

    <p>
        Select a state abbreviation from the dropdown and click
        <em>Look Up State</em> to view the full record.
    </p>

    <%-- Field descriptions so the reader knows what each column means --%>
    <h2>Field Descriptions</h2>
    <p>
        <strong>Abbreviation</strong> - Two-letter postal abbreviation (primary key).<br>
        <strong>State Name</strong> - Full name of the state.<br>
        <strong>Capital</strong> - Name of the state capital city.<br>
        <strong>Date Admitted</strong> - Date the state joined the Union.<br>
        <strong>2020 Population</strong> - Approximate population from the 2020 Census.
    </p>

    <%--
        Declare DbBean in session scope so the JDBC connection is reused
        across the GET and POST requests within the same browser session.
    --%>
    <jsp:useBean id="db" class="database.DbBean" scope="session" />

    <%-- Scriptlet: on GET, render the dropdown form only --%>
    <%
        if (request.getMethod().equals("GET")) {
            out.print(db.formGetPK("CRUD_Read.jsp"));
        }
    %>

    <%-- Scriptlet: on POST, render the form again and display the selected state's record --%>
    <%
        if (request.getMethod().equals("POST")) {

            // Redisplay the dropdown so the user can make another selection
            out.print(db.formGetPK("CRUD_Read.jsp"));

            // Retrieve the abbreviation the user chose from the form
            String stateAbbr = request.getParameter("stateAbbr");

            if (stateAbbr != null && !stateAbbr.trim().isEmpty()) {
    %>

    <h2>State Record: <%= stateAbbr %></h2>

    <%--
        Print the HTML table returned by DbBean.read().
        The bean queries the database and returns thead and tbody HTML.
    --%>
    <%
                out.print(db.read(stateAbbr));
            }
        }
    %>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 5 &amp; 6 Assignment 5.3/6.3 -- 2026-07-05</p>
</footer>

</body>
</html>
