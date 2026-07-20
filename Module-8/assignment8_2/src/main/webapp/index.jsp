<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 8 - Assignment 8.2 (CRUD App - Part 3)
    Purpose:    Landing page for the U.S. States CRUD application.
                Holds links to all CRUD deliverables completed so far,
                carried forward from Module 5 & 6 and Module 7, and
                extended for Module 8.
    Due Date:   July 19th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Module 8</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>U.S. States Database</h1>
    <h2>CRUD Application</h2>
</header>

<main>

    <h2>Table of Contents</h2>

    <p>
        This project uses the <strong>rBreutzmannStatesdata</strong> table in the
        <strong>CSD430</strong> database. Each link below corresponds to one part
        of the CRUD assignment.
    </p>

    <%-- Links to each CRUD deliverable are added here as modules are completed --%>
    <ul>
        <li><a href="CRUD_Read.jsp">CRUD Read (Assignment 5.3/6.3)</a></li>
        <li><a href="CRUD_Create.jsp">CRUD Create (Assignment 7.2)</a></li>
        <li><a href="CRUD_Update.jsp">CRUD Update (Assignment 8.2)</a></li>
    </ul>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 8 -- 2026-07-19</p>
</footer>

</body>
</html>
