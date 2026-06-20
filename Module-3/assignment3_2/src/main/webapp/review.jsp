<%--
    Author:     Robert Breutzmann
    Assignment: Module 3 Assignment - JSP Forms
    Purpose:    Receives and displays the submitted D&D session review from index.jsp.
                All form values are read from the POST request and shown in a table.
    Due Date:   June 21st, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- Scriptlet: Read and sanitize all submitted form values --%>
<%!
    /**
     * Trims a request parameter and returns a fallback string if the value is null or blank.
     *
     * @param value    the raw string from the request parameter
     * @param fallback the string to return when value is null or blank
     * @return trimmed value, or fallback if empty
     */
    private String clean(String value, String fallback) {
        if (value == null || value.trim().isEmpty()) {
            return fallback;
        }
        return value.trim();
    }
%>

<%
    String playerName      = clean(request.getParameter("playerName"),      "Not provided");
    String characterName   = clean(request.getParameter("characterName"),   "Not provided");
    String overallRating   = clean(request.getParameter("overallRating"),   "Not provided");
    String combatRating    = clean(request.getParameter("combatRating"),    "Not provided");
    String storyRating     = clean(request.getParameter("storyRating"),     "Not provided");
    String goodStop        = clean(request.getParameter("goodStop"),        "Not provided");
    String everyoneShone   = clean(request.getParameter("everyoneShone"),   "Not provided");
    String anythingUnclear = clean(request.getParameter("anythingUnclear"), "Not provided");
    String bestMoment      = clean(request.getParameter("bestMoment"),      "None provided");
    String wouldChange     = clean(request.getParameter("wouldChange"),     "None provided");
    String moreOf          = clean(request.getParameter("moreOf"),          "None provided");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Session Review - Results</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <h1>Session Review Results</h1>
    <p class="intro">Thank you for your feedback. Your responses are shown below.</p>

    <h2>Submitted Review</h2>

    <table>
        <thead>
            <tr>
                <th>Question</th>
                <th>Response</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Player Name</td>
                <td><%= playerName %></td>
            </tr>
            <tr>
                <td>Character Name</td>
                <td><%= characterName %></td>
            </tr>
            <tr>
                <td>Overall Session Rating</td>
                <td><%= overallRating %> / 5</td>
            </tr>
            <tr>
                <td>Combat Rating</td>
                <td><%= combatRating %> / 5</td>
            </tr>
            <tr>
                <td>Story and Roleplay Rating</td>
                <td><%= storyRating %> / 5</td>
            </tr>
            <tr>
                <td>Did the session end at a good stopping point?</td>
                <td><%= goodStop %></td>
            </tr>
            <tr>
                <td>Did every player get a chance to contribute?</td>
                <td><%= everyoneShone %></td>
            </tr>
            <tr>
                <td>Was anything unclear or confusing?</td>
                <td><%= anythingUnclear %></td>
            </tr>
            <tr>
                <td>Best moment of the session</td>
                <td><%= bestMoment %></td>
            </tr>
            <tr>
                <td>What would you change?</td>
                <td><%= wouldChange %></td>
            </tr>
            <tr>
                <td>More of this next session</td>
                <td><%= moreOf %></td>
            </tr>
        </tbody>
    </table>

    <p><a href="index.jsp">Submit another review</a></p>

    <footer>
        <p>Robert Breutzmann -- CSD-430 Module 3 Assignment -- 2026-06-21</p>
    </footer>

</body>
</html>
