<%--
    Author:     Robert Breutzmann
    Assignment: Module 2 Assignment – JSP Scriptlets
    Purpose:    Displays a data table of the Aven Cycle trilogy books by Cass Morris
                using JSP Scriptlets for Java logic and external CSS for styling.
    Due Date:   June 14th, 2024

--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- Scriptlet: Define a simple inner class to hold one book record --%>
<%!
    // Book record: title, year published, and main protagonist
    class Book {
        String title;
        String yearPublished;
        String synopsis;
        String coverImage;

        Book(String title, String yearPublished, String synopsis, String coverImage) {
            this.title         = title;
            this.yearPublished = yearPublished;
            this.synopsis      = synopsis;
            this.coverImage    = coverImage;
        }
    }
%>

<%-- Scriptlet: Build the list of book records --%>
<%
    // Five books across the Aven Cycle trilogy (includes companion novellas)
    Book[] books = {
        new Book(
            "From Unseen Fire",
            "2018",
            "A young mage navigates political intrigue and forbidden magic during a fragile republic.",
            "FromUnseenFire.png"
        ),
        new Book(
            "Give Way to Night",
            "2020",
            "Supernatural threats multiply as war brews on the frontier and faction rivalries intensify.",
            "GiveWayToNight.png"
        ),
        new Book(
            "Aven Cycle: Wages of Shadow",
            "2021",
            "The shadow magic crisis reaches its peak, forcing Latona into her most dangerous confrontation.",
            "BloodStainedShade.png"
        ),
        new Book(
            "The Mages of Aven",
            "2018-Present",
            "A microfiction series exploring the world of Aven through the eyes of its mages, one mage and one hundred words at a time.",
            "MagesOfAven.png"
        ),
        new Book(
            "Traveling Light",
            "2024",
            "An anthology of fan fiction set in the world created by Cass and her co-hosts of the Worldbuilding for Maschochists podcast known as the Magical Nude Gate (MNG) world.  The hosts and many guests are authors, but fans have submission in the anthology as well.",
            "TravelingLight.png"
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
        Set in a a second-world Roman republic called Aven, the books blend political drama with elemental
        magic. The series centers on Latona, a fire and spirit mage who was forced to serve the dictator for
        many years before his death, now free to explore her powers.  She must navigate learning navigating those
        powers, the politics of the senate that seek to control the magic, and a rising threat from a distant land.
        All the while, she also is navigating a loveless marriage, and very strong feelings for one of the strongest
        and most influential men in Aven, who holds a dark secret of his own.  As a shadow and water mage, Sempronius
        is forbidden from being in the Senate, and yet, if no one knows...
    </p>

    <h2>Companion Series - Mages of Aven</h2>

    <p>
        <em>The Mages of Aven</em> is a series of very short stories written by <strong>Cass Morris</strong>
        in the world of Aven.  The goal is to explore the magical system she created, as well as see Aven through
        the eyes of people others than the main characters of the Aven Cycle.  THis series, only available to her Patreon
        Subscribers, is one story at a time, each from the point of view of a different mage, exploring different
        aspects of the connection to magic, politics, friendship, love, and everything else inside the world of Aven.
    </p>

    <h2>The Anthology - Traveling Light</h2>

    <p>
        <em>Traveling Light<em> in an anthology of stories in the crafted world that was created by the hosts of the 
        podcast <em>Worldbuilding for Masochists</em>: <strong>Alexandra Rowland</strong> and <strong>Rowenna Miller</strong>
        no longer host the show, but have contributed to the world, and this anthology.  Current hosts <strong>Cass Morris, 
        Marshall Ryan Maresca,</strong> and <strong> Natania Barron</strong> upkeep this world they build on the podcast, 
        getting tidbits from their guest hosts every time they have one.  A major tent-post of this world is the Magical
        Nude Gates (MNG), which allow people to travel between gates, but cannot take anything with them.  No weapons, no papers,
        no possessions...  no clothes.  They explore the implications of what this, and many other things mean on how
        a society will develop on their podcast to help avid worldbuilders create a more vibrant and realistic world for their
        novels, fantasy games, or just for fun!

        The anthology is a collection of short stories set in this world, mostly by the hosts and guest hosts.  Several
        fans wrote stores that got added to the anthology as well!  Making this world a TRULY collaborative effort!

    <%-- Field descriptions tell the reader what each column means --%>
    <h2>Field Descriptions</h2>
    <dl>
        <dt>Cover</dt>
        <dd>The official cover art for the book or companion work.</dd>

        <dt>Title</dt>
        <dd>The full title of the book or companion novella.</dd>

        <dt>Year Published</dt>
        <dd>The calendar year the work was first published.</dd>

        <dt>Synopsis</dt>
        <dd>A brief one-sentence description of the book's central conflict.</dd>
    </dl>

    <h2>Book Records</h2>

    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Cover</th>
                <th>Title</th>
                <th>Year Published</th>
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
                <td><img src="images/<%= book.coverImage %>" alt="<%= book.title %> cover" class="cover-img"></td>
                <td><%= book.title %></td>
                <td><%= book.yearPublished %></td>
                <td><%= book.synopsis %></td>
            </tr>
            <%
                } // end for loop
            %>

        </tbody>
    </table>

    <footer>
        <p>
            Data compiled by Robert Breutzmann -- CSD-430 Module 2 Assignment -- 2026-06-14.<br>
            Book information sourced from the author's
            <a href="https://cassmorriswrites.com/" target="_blank" rel="noopener noreferrer">official website</a>,
            her <a href="https://www.patreon.com/CassRMorris" target="_blank" rel="noopener noreferrer">Patreon</a>
            and <a href="https://worldbuildingformasochists.podbean.com/p/traveling-light-tales-of-the-magical-gates/" target="_blank" rel="noopener noreferrer">Worldbuilding for Maschochists page</a> on the anthology, <em>Traveling Light</em>.
        </p>
    </footer>

</body>
</html>