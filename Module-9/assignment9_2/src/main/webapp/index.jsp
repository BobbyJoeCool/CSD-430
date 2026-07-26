<%--
    Author:     Robert Breutzmann
    Assignment: CSD-430 Module 9 - Assignment 9.2 (CRUD App - Part 4)
    Purpose:    Landing page for the U.S. States CRUD application.
                Holds links to all CRUD deliverables completed so far,
                carried forward from Module 5 & 6, Module 7, and
                Module 8, and extended for Module 9.
    Due Date:   July 26th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>U.S. States - Module 9</title>
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
        <li><a href="CRUD_Delete.jsp">CRUD Delete (Assignment 9.2)</a></li>
    </ul>

</main>

<footer>
    <p>Robert Breutzmann -- CSD-430 Module 9 -- 2026-07-26</p>
</footer>

</body>
</html>
