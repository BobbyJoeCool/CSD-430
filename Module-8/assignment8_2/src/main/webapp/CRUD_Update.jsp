<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 8 - Assignment 8.2 (CRUD App - Part 3)
    Purpose:    CRUD Update page for the U.S. States database application.
                On GET, displays a dropdown of all state abbreviations from
                the database. On the first POST (record selected), displays
                an editable form pre-filled with that record's values, with
                the Abbreviation (primary key) field shown in a non-updatable
                format. On the second POST (edit form submitted), the record
                is updated through DbBean and the updated record is then
                displayed below in a table format. All database access is
                handled through DbBean.
    Due Date:   July 19th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Update</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>U.S. States Database</h1>
    <nav><a href="index.jsp">Home</a></nav>
</header>

<main>

    <h2>Update a State Record</h2>

    <p>
        Select a state abbreviation from the dropdown and click
        <em>Look Up State</em>. Then edit the fields shown and click
        <em>Update State</em> to save your changes to the
        <strong>rBreutzmannStatesdata</strong> table.
    </p>

    <%-- Field descriptions so the reader knows what each input expects --%>
    <h2>Field Descriptions</h2>
    <p>
        <strong>Abbreviation</strong> - Two-letter postal abbreviation (primary key, not editable).<br>
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
            out.print(db.formGetPK("CRUD_Update.jsp"));
        }
    %>

    <%--
        Scriptlet: on POST, tell apart the two stages of the update flow.
        formStage is absent on the dropdown selection POST and equal to
        "update" on the edit-form submission POST.
    --%>
    <%
        if (request.getMethod().equals("POST")) {

            String formStage = request.getParameter("formStage");
            String stateAbbr = request.getParameter("stateAbbr");

            if (formStage == null) {

                // First POST: a record was selected from the dropdown.
                // Re-display the dropdown, then show the editable form.
                out.print(db.formGetPK("CRUD_Update.jsp"));

                if (stateAbbr != null && !stateAbbr.trim().isEmpty()) {
    %>

    <h2>Edit State Record: <%= stateAbbr %></h2>

    <%
                    out.print(db.editForm(stateAbbr.trim().toUpperCase(), "CRUD_Update.jsp"));
                }
            }
            else if (formStage.equals("update")) {

                // Second POST: the edit form was submitted. Update the
                // record, then display the updated record in a table.
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

                    out.print(db.update(stateAbbr.trim().toUpperCase(), stateName.trim(),
                            capital.trim(), dateAdmitted.trim(), population));
    %>

    <h2>Updated State Record</h2>

    <%
                    out.print(db.read(stateAbbr.trim().toUpperCase()));
                }
            }
        }
    %>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 8 Assignment 8.2 -- 2026-07-19</p>
</footer>

</body>
</html>
