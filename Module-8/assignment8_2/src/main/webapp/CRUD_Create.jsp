<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 7 - Assignment 7.2 (CRUD App - Part 2)
                (carried forward unmodified into Module 8 - Assignment 8.2)
    Purpose:    CRUD Create page for the U.S. States database application.
                Displays an HTML form gathering all five fields needed to
                add a new state record, including the primary key
                (state_abbr). On POST, the record is inserted through
                DbBean, and every record currently in the table is then
                displayed below the form in a table format. All database
                access is handled through DbBean.
    Due Date:   July 12th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Create</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>U.S. States Database</h1>
    <nav><a href="index.jsp">Home</a></nav>
</header>

<main>

    <h2>Add a New State Record</h2>

    <p>
        Fill in every field below and click <em>Add State</em> to insert a new
        record into the <strong>rBreutzmannStatesdata</strong> table. The
        Abbreviation field is the primary key and must be unique.
    </p>

    <%-- Field descriptions so the reader knows what each input expects --%>
    <h2>Field Descriptions</h2>
    <p>
        <strong>Abbreviation</strong> - Two-letter postal abbreviation (primary key).<br>
        <strong>State Name</strong> - Full name of the state.<br>
        <strong>Capital</strong> - Name of the state capital city.<br>
        <strong>Date Admitted</strong> - Date the state joined the Union.<br>
        <strong>2020 Population</strong> - Approximate population from the 2020 Census.
    </p>

    <%-- The Create form itself: all HTML entry fields for the new record --%>
    <form method="post" action="CRUD_Create.jsp">
        <label for="stateAbbr">Abbreviation:</label>
        <input type="text" id="stateAbbr" name="stateAbbr" maxlength="2" pattern="[A-Za-z]{2}" required>

        <label for="stateName">State Name:</label>
        <input type="text" id="stateName" name="stateName" maxlength="50" required>

        <label for="capital">Capital:</label>
        <input type="text" id="capital" name="capital" maxlength="50" required>

        <label for="dateAdmitted">Date Admitted:</label>
        <input type="date" id="dateAdmitted" name="dateAdmitted" required>

        <label for="population">2020 Population:</label>
        <input type="number" id="population" name="population" min="0" required>

        <input type="submit" value="Add State">
    </form>

    <%--
        Declare DbBean in session scope so the JDBC connection is reused
        across the GET and POST requests within the same browser session.
    --%>
    <jsp:useBean id="db" class="database.DbBean" scope="session" />

    <%-- Scriptlet: on POST, gather the submitted fields and insert the new record --%>
    <%
        if (request.getMethod().equals("POST")) {

            String stateAbbr     = request.getParameter("stateAbbr");
            String stateName     = request.getParameter("stateName");
            String capital       = request.getParameter("capital");
            String dateAdmitted  = request.getParameter("dateAdmitted");
            String populationStr = request.getParameter("population");

            if (stateAbbr != null && !stateAbbr.trim().isEmpty()
                    && stateName != null && !stateName.trim().isEmpty()
                    && capital != null && !capital.trim().isEmpty()
                    && dateAdmitted != null && !dateAdmitted.trim().isEmpty()
                    && populationStr != null && !populationStr.trim().isEmpty()) {

                int population = Integer.parseInt(populationStr);
    %>

    <%
                out.print(db.create(stateAbbr.trim().toUpperCase(), stateName.trim(),
                        capital.trim(), dateAdmitted.trim(), population));
            }
        }
    %>

    <h2>Current State Records</h2>

    <%-- Print the HTML table of every record, returned by DbBean.readAll() --%>
    <%
        out.print(db.readAll());
    %>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 7 Assignment 7.2 -- 2026-07-12</p>
</footer>

</body>
</html>
