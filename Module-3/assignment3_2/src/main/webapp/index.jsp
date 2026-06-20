<%--
    Author:     Robert Breutzmann
    Assignment: Module 3 Assignment - JSP Forms
    Purpose:    A D&D session review form used after each session I run as DM.
                I remade this from my Google-Forms into JSP.
                Players fill this out to give feedback on combat, story, and pacing.
                Submitted data is displayed in a separate response JSP.
    Due Date:   June 21st, 2026
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>D&amp;D Session Review</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

    <h1>D&amp;D Session Review</h1>
    <p class="intro">
        Fill out this form after each session to help shape future games.
        Your feedback on combat, story, and pacing helps improve the experience for the whole table.
    </p>

    <h2>Field Descriptions</h2>
    <dl>
        <dt>Your Name</dt>
        <dd>The name you go by at the table (player name, not character name).</dd>

        <dt>Character Name</dt>
        <dd>The name of the character you played this session.</dd>

        <dt>Overall Session Rating</dt>
        <dd>Your general impression of the session on a scale of 1 (poor) to 5 (excellent).</dd>

        <dt>Combat Rating</dt>
        <dd>How the combat encounters felt in terms of challenge, pacing, and fun.</dd>

        <dt>Story and Roleplay Rating</dt>
        <dd>How engaging the story beats and roleplay moments were this session.</dd>

        <dt>Good Stopping Point</dt>
        <dd>Whether the session ended at a point that felt complete or satisfying.</dd>

        <dt>Everyone Had a Moment</dt>
        <dd>Whether every player had at least one chance to contribute or shine.</dd>

        <dt>Anything Unclear</dt>
        <dd>Whether any rules, plot points, or DM decisions left you confused.</dd>

        <dt>Best Moment</dt>
        <dd>The highlight of the session from your perspective.</dd>

        <dt>What to Change</dt>
        <dd>Anything you would have liked to go differently.</dd>

        <dt>More of This</dt>
        <dd>Something you want to see more of in future sessions.</dd>
    </dl>

    <h2>Session Review Form</h2>

    <form action="review.jsp" method="post">

        <fieldset>
            <legend>Who Are You?</legend>

            <p>
                <label for="playerName">Your Name:</label>
                <input type="text" id="playerName" name="playerName" maxlength="60" required>
            </p>
            <p>
                <label for="characterName">Character Name:</label>
                <input type="text" id="characterName" name="characterName" maxlength="60" required>
            </p>
        </fieldset>

        <fieldset>
            <legend>Ratings</legend>

            <p>
                <label for="overallRating">Overall Session Rating:</label>
                <select id="overallRating" name="overallRating">
                    <option value="5">5 - Excellent</option>
                    <option value="4">4 - Good</option>
                    <option value="3" selected>3 - Average</option>
                    <option value="2">2 - Below Average</option>
                    <option value="1">1 - Poor</option>
                </select>
            </p>
            <p>
                <label for="combatRating">Combat Rating:</label>
                <select id="combatRating" name="combatRating">
                    <option value="5">5 - Excellent</option>
                    <option value="4">4 - Good</option>
                    <option value="3" selected>3 - Average</option>
                    <option value="2">2 - Below Average</option>
                    <option value="1">1 - Poor</option>
                </select>
            </p>
            <p>
                <label for="storyRating">Story and Roleplay Rating:</label>
                <select id="storyRating" name="storyRating">
                    <option value="5">5 - Excellent</option>
                    <option value="4">4 - Good</option>
                    <option value="3" selected>3 - Average</option>
                    <option value="2">2 - Below Average</option>
                    <option value="1">1 - Poor</option>
                </select>
            </p>
        </fieldset>

        <fieldset>
            <legend>Yes / No</legend>

            <p>
                <span class="question">Did the session end at a good stopping point?</span><br>
                <label><input type="radio" name="goodStop" value="Yes" checked> Yes</label>
                <label><input type="radio" name="goodStop" value="No"> No</label>
            </p>
            <p>
                <span class="question">Did every player get a chance to contribute?</span><br>
                <label><input type="radio" name="everyoneShone" value="Yes" checked> Yes</label>
                <label><input type="radio" name="everyoneShone" value="No"> No</label>
            </p>
            <p>
                <span class="question">Was anything unclear or confusing during the session?</span><br>
                <label><input type="radio" name="anythingUnclear" value="Yes"> Yes</label>
                <label><input type="radio" name="anythingUnclear" value="No" checked> No</label>
            </p>
        </fieldset>

        <fieldset>
            <legend>Short Answer</legend>

            <p>
                <label for="bestMoment">What was the best moment of the session?</label><br>
                <textarea id="bestMoment" name="bestMoment" rows="4" cols="60"></textarea>
            </p>
            <p>
                <label for="wouldChange">What would you change or wish had gone differently?</label><br>
                <textarea id="wouldChange" name="wouldChange" rows="4" cols="60"></textarea>
            </p>
            <p>
                <label for="moreOf">What do you want more of in the next session?</label><br>
                <textarea id="moreOf" name="moreOf" rows="4" cols="60"></textarea>
            </p>
        </fieldset>

        <p>
            <input type="submit" value="Submit Review">
            <input type="reset" value="Clear Form">
        </p>

    </form>

    <footer>
        <p>Robert Breutzmann -- CSD-430 Module 3 Assignment -- 2026-06-21</p>
    </footer>

</body>
</html>
