<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 9 - Assignment 9.2 (CRUD App - Part 4)
    Purpose:    CRUD Delete page for the U.S. States database application.
                On GET, displays every record currently in the table
                followed by a dropdown of all state abbreviations. On
                POST, deletes the selected record through DbBean, then
                re-displays the remaining records and the dropdown of
                remaining keys so the user may continue deleting. Once
                every record has been removed, the table still displays
                its header row with an empty body. All database access
                is handled through DbBean.
    Due Date:   July 26th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Delete</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>U.S. States Database</h1>
    <nav><a href="index.jsp">Home</a></nav>
</header>

<main>

    <h2>Delete a State Record</h2>

    <p>
        The table below lists every state record currently in the
        <strong>rBreutzmannStatesdata</strong> table. Select a state
        abbreviation from the dropdown and click <em>Delete State</em>
        to remove that record. The table and dropdown will refresh to
        show the remaining records, and you may continue deleting until
        the table is empty.
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

    <%-- Scriptlet: on POST, delete the selected record before the table is rebuilt --%>
    <%
        if (request.getMethod().equals("POST")) {

            String stateAbbr = request.getParameter("stateAbbr");

            if (stateAbbr != null && !stateAbbr.trim().isEmpty()) {
                out.print(db.delete(stateAbbr.trim().toUpperCase()));
            }
        }
    %>

    <h2>Current State Records</h2>

    <%-- Print the HTML table of every remaining record, returned by DbBean.readAll() --%>
    <%
        out.print(db.readAll());
    %>

    <h2>Select a Record to Delete</h2>

    <%-- Print the dropdown form of remaining keys, labeled for the delete action --%>
    <%
        out.print(db.formGetPK("CRUD_Delete.jsp", "Delete State"));
    %>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 9 Assignment 9.2 -- 2026-07-26</p>
</footer>

</body>
</html>
