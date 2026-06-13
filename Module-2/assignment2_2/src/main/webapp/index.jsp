<%--
  Author:     Robert Breutzmann
  Date:       2026-06-12
  Assignment: Module 2 Assignment – JSP Scriptlets
  Purpose:    Displays a data table of the Aven Cycle trilogy books by Cass Morris
              using JSP Scriptlets for Java logic and external CSS for styling.
  AI Disclosure: This file was generated with the assistance of Claude (Anthropic).
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- Scriptlet: Define a simple inner class to hold one book record --%>
<%!
    // Book record: title, year published, and main protagonist
    class Book {
        String title;
        int yearPublished;
        String protagonist;
        String setting;
        String synopsis;

        Book(String title, int yearPublished, String protagonist, String setting, String synopsis) {
            this.title         = title;
            this.yearPublished = yearPublished;
            this.protagonist   = protagonist;
            this.setting       = setting;
            this.synopsis      = synopsis;
        }
    }
%>

<%-- Scriptlet: Build the list of book records --%>
<%
    // Five books across the Aven Cycle trilogy (includes companion novellas)
    Book[] books = {
        new Book(
            "From Unseen Fire",
            2018,
            "Latona of the Vitelliae",
            "Aven (alternate-history Rome)",
            "A young mage navigates political intrigue and forbidden magic during a fragile republic."
        ),
        new Book(
            "Give Way to Night",
            2020,
            "Latona of the Vitelliae",
            "Aven & the Iberian frontier",
            "Supernatural threats multiply as war brews on the frontier and faction rivalries intensify."
        ),
        new Book(
            "Aven Cycle: Wages of Shadow",
            2021,
            "Latona of the Vitelliae",
            "Aven & cursed territories",
            "The shadow magic crisis reaches its peak, forcing Latona into her most dangerous confrontation."
        ),
        new Book(
            "A Strange Shadow",
            2021,
            "Vibia Sempronia",
            "Aven (companion novella)",
            "A short companion story exploring the role of augury and secret-keeping in Aventan society."
        ),
        new Book(
            "The Bloodied Toga",
            2022,
            "Marcus Sempronius Rufilius",
            "Aven senate & streets",
            "A companion novella that follows the political maneuvering behind the scenes of the main trilogy."
        )
    };
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Aven Cycle – Book Data</title>

    <%-- Link to external CSS stylesheet --%>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <h1>The Aven Cycle Trilogy</h1>
    <h2>Series Overview</h2>

    <p>
        The <em>Aven Cycle</em> is an alternate-history fantasy series by <strong>Cass Morris</strong>.
        Set in a Rome-inspired republic called Aven, the books blend political drama with elemental
        magic. The series centers on women who wield magical gifts in a society that tries to silence
        them, weaving together themes of power, identity, and resistance.
    </p>

    <%-- Field descriptions tell the reader what each column means --%>
    <h2>Field Descriptions</h2>
    <dl>
        <dt>Title</dt>
        <dd>The full title of the book or companion novella.</dd>

        <dt>Year Published</dt>
        <dd>The calendar year the work was first published.</dd>

        <dt>Protagonist</dt>
        <dd>The primary point-of-view character for that volume.</dd>

        <dt>Setting</dt>
        <dd>The primary geographic and story location.</dd>

        <dt>Synopsis</dt>
        <dd>A brief one-sentence description of the book's central conflict.</dd>
    </dl>

    <h2>Book Records</h2>

    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Year Published</th>
                <th>Protagonist</th>
                <th>Setting</th>
                <th>Synopsis</th>
            </tr>
        </thead>
        <tbody>

            <%-- Scriptlet: Loop through all book records and emit one table row each --%>
            <%
                for (int i = 0; i < books.length; i++) {
                    Book book = books[i];
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= book.title %></td>
                <td><%= book.yearPublished %></td>
                <td><%= book.protagonist %></td>
                <td><%= book.setting %></td>
                <td><%= book.synopsis %></td>
            </tr>
            <%
                } // end for loop
            %>

        </tbody>
    </table>

    <footer>
        <p>
            Data compiled by Robert Breutzmann &mdash; CSD-430 Module 2 Assignment &mdash; 2026-06-12.<br>
            Book information sourced from the author's official website and publisher records.
        </p>
    </footer>

</body>
</html>
