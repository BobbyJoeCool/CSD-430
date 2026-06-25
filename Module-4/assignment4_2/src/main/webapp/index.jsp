<%--
    Author:     Robert Breutzmann
    Assignment: Module 4 Assignment - JavaBeans
    Purpose:    Displays a data table of Aven Cycle books using a JavaBean (BookBean)
                to hold each record. Java logic is confined to Scriptlet sections;
                all HTML tags appear outside of Scriptlets.
    Due Date:   June 28th, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.rbreutzmann.beans.BookBean" %>

<%-- Scriptlet: Create one BookBean per record and populate all five fields --%>
<%
    BookBean[] books = new BookBean[5];

    books[0] = new BookBean();
    books[0].setTitle("From Unseen Fire");
    books[0].setAuthor("Cass Morris");
    books[0].setYearPublished("2018");
    books[0].setSynopsis("A young mage navigates political intrigue and forbidden magic during a fragile republic.");
    books[0].setCoverImage("FromUnseenFire.png");

    books[1] = new BookBean();
    books[1].setTitle("Give Way to Night");
    books[1].setAuthor("Cass Morris");
    books[1].setYearPublished("2020");
    books[1].setSynopsis("Supernatural threats multiply as war brews on the frontier and faction rivalries intensify.");
    books[1].setCoverImage("GiveWayToNight.png");

    books[2] = new BookBean();
    books[2].setTitle("Wages of Shadow");
    books[2].setAuthor("Cass Morris");
    books[2].setYearPublished("2022");
    books[2].setSynopsis("The shadow magic crisis reaches its peak, forcing Latona into her most dangerous confrontation.");
    books[2].setCoverImage("BloodStainedShade.png");

    books[3] = new BookBean();
    books[3].setTitle("The Mages of Aven");
    books[3].setAuthor("Cass Morris");
    books[3].setYearPublished("2018-Present");
    books[3].setSynopsis("A microfiction series exploring the world of Aven through the eyes of its mages, one mage and one hundred words at a time.");
    books[3].setCoverImage("MagesOfAven.png");

    books[4] = new BookBean();
    books[4].setTitle("Traveling Light");
    books[4].setAuthor("Cass Morris et al.");
    books[4].setYearPublished("2024");
    books[4].setSynopsis("An anthology of fan fiction set in the shared world created by the hosts of the Worldbuilding for Masochists podcast.");
    books[4].setCoverImage("TravelingLight.png");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Aven Cycle – JavaBean Data Display</title>

    <%-- Link to external CSS stylesheet --%>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <h1>The Aven Cycle Trilogy</h1>
    <h2>Series Overview</h2>

    <p>
        The <em>Aven Cycle</em> is an alternate-history fantasy series by <strong>Cass Morris</strong>.
        Set in a second-world Roman republic called Aven, the books blend political drama with elemental
        magic. The series centers on Latona, a fire and spirit mage who must navigate the politics of
        the senate, a rising shadow threat, and a forbidden connection to one of Aven's most powerful men.
    </p>

    <h2>Field Descriptions</h2>
    <dl>
        <dt>Cover</dt>
        <dd>Official cover art for the book or companion work.</dd>

        <dt>Title</dt>
        <dd>The full title of the book or companion series.</dd>

        <dt>Author</dt>
        <dd>The author or primary contributors responsible for the work.</dd>

        <dt>Year Published</dt>
        <dd>The calendar year the work was first published or began publication.</dd>

        <dt>Synopsis</dt>
        <dd>A brief description of the work's central conflict or purpose.</dd>
    </dl>

    <h2>Book Records</h2>

    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Cover</th>
                <th>Title</th>
                <th>Author</th>
                <th>Year Published</th>
                <th>Synopsis</th>
            </tr>
        </thead>
        <tbody>

            <%-- Scriptlet: Loop through the BookBean array and emit one row per record --%>
            <%
                for (int i = 0; i < books.length; i++) {
                    BookBean book = books[i];
            %>
            <tr>
                <td><%= i + 1 %></td>
                <td><img src="images/<%= book.getCoverImage() %>" alt="<%= book.getTitle() %> cover" class="cover-img"></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getYearPublished() %></td>
                <td><%= book.getSynopsis() %></td>
            </tr>
            <%
                } // end for loop
            %>

        </tbody>
    </table>

    <footer>
        <p>
            Data compiled by Robert Breutzmann -- CSD-430 Module 4 Assignment -- 2026-06-28.<br>
            Book information sourced from the author's
            <a href="https://cassmorriswrites.com/" target="_blank" rel="noopener noreferrer">official website</a>,
            her <a href="https://www.patreon.com/CassRMorris" target="_blank" rel="noopener noreferrer">Patreon</a>
            and <a href="https://worldbuildingformasochists.podbean.com/p/traveling-light-tales-of-the-magical-gates/" target="_blank" rel="noopener noreferrer">Worldbuilding for Maschochists page</a> on the anthology, <em>Traveling Light</em>.
        </p>
    </footer>

</body>
</html>
