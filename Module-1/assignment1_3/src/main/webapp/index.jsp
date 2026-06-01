<%--
    Author:     Robert Breutzmann
    Date:       June 1, 2026
    Course:     CSD 430 - Server-Side Development
    Assignment: Assignment 1.3
    Due Date:   June 7th, 2026

    Purpose: Demonstrate basic JSP by displaying server environment info
             (current time, Java version, server name) and a time-based greeting.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%-- Gather metadata and server environment values used throughout the page --%>
<%
    String author = "Robert Breutzmann";
    String course  = "CSD-430";
    String assignment = "Assignment 1.3";

    SimpleDateFormat sdf = new SimpleDateFormat("MMMM d, yyyy  hh:mm:ss a");
    String currentTime = sdf.format(new Date());

    String javaVersion  = System.getProperty("java.version");
    String serverInfo   = application.getServerInfo();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= course %> - <%= assignment %></title>
    <%-- Basic inline styles: centered layout, styled table with alternating rows --%>
    <style>
        body  { font-family: Arial, sans-serif; max-width: 620px; margin: 60px auto; color: #2c3e50; }
        h1    { border-bottom: 2px solid #3498db; padding-bottom: 8px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 10px 14px; text-align: left; }
        th    { background-color: #3498db; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .footer { margin-top: 24px; font-size: 0.85em; color: #888; }
    </style>
</head>
<body>

    <h1><%= course %> -- <%= assignment %></h1>
    <p>This JSP page demonstrates Java code embedded within HTML markup.</p>

    <%-- Table displaying server environment details collected in the scriptlet above --%>
    <table>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Author</td>
            <td><%= author %></td>
        </tr>
        <tr>
            <td>Server Date &amp; Time</td>
            <td><%= currentTime %></td>
        </tr>
        <tr>
            <td>Java Version</td>
            <td><%= javaVersion %></td>
        </tr>
        <tr>
            <td>Server Info</td>
            <td><%= serverInfo %></td>
        </tr>
    </table>

    <%-- Scriptlet: build a short status message based on the hour --%>
    <%
        int hour = new java.util.Calendar.Builder().build().get(java.util.Calendar.HOUR_OF_DAY);
        String greeting;
        if (hour < 12) {
            greeting = "Good morning";
        } else if (hour < 18) {
            greeting = "Good afternoon";
        } else {
            greeting = "Good evening";
        }
    %>
    <p><em><%= greeting %>, <%= author %>. Jakarta Tomcat is running correctly.</em></p>

    <p class="footer">JSP is functioning. This message was generated server-side.</p>

</body>
</html>
