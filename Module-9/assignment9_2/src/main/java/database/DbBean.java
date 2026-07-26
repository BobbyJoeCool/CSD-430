/**
 * Author:     Robert Breutzmann
 * Assignment: CSD-430 Module 9 - Assignment 9.2 (CRUD App - Part 4)
 * Purpose:    JavaBean that handles all database access for the
 *             rBreutzmannStatesdata table in the CSD430 database.
 *             Provides a dropdown form populated with all state
 *             abbreviations, a method to read one state record by
 *             its primary key, a method to insert a new state
 *             record, a method to read every record in the table
 *             for display, a method to build an editable form for
 *             an existing record (key field locked), a method to
 *             update an existing state record, and a method to
 *             delete an existing state record.
 * Due Date:   July 26th, 2026
 */
package database;

/**
 * Database access bean for the rBreutzmannStatesdata table.
 *
 * Connects to the CSD430 database as student1 and exposes the
 * following operations: building a dropdown form containing all
 * state abbreviations, reading one state record matching a
 * supplied abbreviation, inserting a new state record, reading
 * every record in the table as an HTML table, building an editable
 * form pre-filled with an existing record's values, updating
 * an existing state record, and deleting an existing state record.
 *
 * This class implements java.io.Serializable as required by the
 * JavaBean specification.
 */
public class DbBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    // transient: a live JDBC connection/statement can't be serialized
    // and must be reopened on deserialize, which openConnection() does
    private transient java.sql.Connection connection;
    private transient java.sql.Statement  statement;

    // Set by openConnection() if the initial connection fails; surfaced
    // as a popup alert by the next public method that is called
    private String connectionError;

    // Connection parameters for the CSD430 database
    private static final String DB_URL  = "jdbc:mysql://localhost:3306/CSD430";
    private static final String DB_USER = "student1";
    private static final String DB_PASS = "pass";

    // ---------------------------------------------------------------
    // Constructor
    // ---------------------------------------------------------------

    /**
     * No-argument constructor required by the JavaBean specification.
     * Opens a JDBC connection to the CSD430 database on creation.
     */
    public DbBean() {
        openConnection();
    }

    // ---------------------------------------------------------------
    // Bean properties (getters/setters)
    // ---------------------------------------------------------------

    /**
     * Returns the JDBC connection opened by this bean.
     * Read-only: the connection is managed internally by
     * openConnection() and should not be replaced externally.
     */
    public java.sql.Connection getConnection() {
        return connection;
    }

    /**
     * Returns the JDBC statement created from this bean's connection.
     * Read-only: the statement is managed internally by
     * openConnection() and should not be replaced externally.
     */
    public java.sql.Statement getStatement() {
        return statement;
    }

    /**
     * Returns the error message recorded if the initial connection
     * attempt failed, or null if the connection opened successfully.
     * Read-only: this value is set internally by openConnection().
     */
    public String getConnectionError() {
        return connectionError;
    }

    // ---------------------------------------------------------------
    // Private helpers
    // ---------------------------------------------------------------

    /**
     * Opens a JDBC connection to CSD430 and stores it in the
     * connection and statement fields for reuse across method calls.
     */
    private void openConnection() {

        try {
            // Load the MySQL JDBC driver class
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open the connection using the student1 credentials
            connection = java.sql.DriverManager.getConnection(
                    DB_URL + "?user=" + DB_USER + "&password=" + DB_PASS);

            statement = connection.createStatement();
        }
        catch (ClassNotFoundException cnfe) {
            connectionError = "Driver not found: " + cnfe.getMessage();
        }
        catch (java.sql.SQLException sqle) {
            connectionError = "SQL Exception: " + sqle.getMessage();
        }
    }

    /**
     * Builds a script tag that pops up a JavaScript alert with the
     * given message when the returned HTML is rendered in the browser.
     */
    private static String popupAlert(String message) {
        String escaped = message == null ? "" : message
                .replace("\\", "\\\\")
                .replace("'", "\\'")
                .replace("\n", " ")
                .replace("\r", "");
        return "<script>alert('" + escaped + "');</script>\n";
    }

    // ---------------------------------------------------------------
    // formGetPK
    // ---------------------------------------------------------------

    /**
     * Queries all state abbreviations from the database and returns
     * a complete HTML form containing a dropdown select element.
     *
     * The form POSTs to the page given by requestURL so the same
     * JSP can handle both the initial display and the submission.
     *
     * @param requestURL the form action target (e.g., "CRUD_Read.jsp")
     * @return an HTML string containing the complete select form
     */
    public String formGetPK(String requestURL) {
        return formGetPK(requestURL, "Look Up State");
    }

    /**
     * Queries all state abbreviations from the database and returns
     * a complete HTML form containing a dropdown select element, with
     * the submit button labeled using the supplied text.
     *
     * The form POSTs to the page given by requestURL so the same
     * JSP can handle both the initial display and the submission.
     *
     * @param requestURL  the form action target (e.g., "CRUD_Delete.jsp")
     * @param buttonLabel the text shown on the submit button
     * @return an HTML string containing the complete select form
     */
    public String formGetPK(String requestURL, String buttonLabel) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        StringBuilder html = new StringBuilder();
        String errorMessage = null;

        html.append("<form method='post' action='").append(requestURL).append("'>\n");
        html.append("<label for='stateAbbr'>Select a State:</label>&nbsp;\n");
        html.append("<select name='stateAbbr' id='stateAbbr'>\n");

        // Query every primary key in alphabetical order for the dropdown
        try (java.sql.ResultSet resultSet = statement.executeQuery(
                "SELECT state_abbr FROM rBreutzmannStatesdata ORDER BY state_abbr ASC")) {

            // Walk the result set and add one option per state abbreviation
            while (resultSet.next()) {
                String abbr = resultSet.getString(1);
                html.append("<option value='").append(abbr).append("'>")
                    .append(abbr).append("</option>\n");
            }
        }
        catch (java.sql.SQLException e) {
            errorMessage = "Error loading state list: " + e.getMessage();
        }

        html.append("</select>\n");
        html.append("<input type='submit' value='").append(buttonLabel).append("' />\n");
        html.append("</form>\n");

        if (errorMessage != null) {
            html.append(popupAlert(errorMessage));
        }

        return html.toString();
    }

    // ---------------------------------------------------------------
    // read
    // ---------------------------------------------------------------

    /**
     * Retrieves a single state record from the database by its primary
     * key and returns the result as an HTML table.
     *
     * The returned table includes a thead row with column headers and
     * one tbody row containing the state data. A PreparedStatement is
     * used to safely embed the user-supplied key into the query.
     *
     * @param stateAbbr the two-letter postal abbreviation to look up
     * @return an HTML string containing the state data table
     */
    public String read(String stateAbbr) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        StringBuilder html = new StringBuilder();

        // PreparedStatement prevents SQL injection from the form input
        try (java.sql.PreparedStatement ps = connection.prepareStatement(
                "SELECT state_abbr, state_name, capital, date_admitted, approx_pop_2020 "
              + "FROM rBreutzmannStatesdata WHERE state_abbr = ?")) {

            ps.setString(1, stateAbbr);

            try (java.sql.ResultSet resultSet = ps.executeQuery()) {

                html.append("<table>\n");

                // Table header row describing each field
                html.append("<thead>\n<tr>\n");
                html.append("<th>Abbreviation</th>\n");
                html.append("<th>State Name</th>\n");
                html.append("<th>Capital</th>\n");
                html.append("<th>Date Admitted</th>\n");
                html.append("<th>2020 Population</th>\n");
                html.append("</tr>\n</thead>\n");

                html.append("<tbody>\n");

                if (resultSet.next()) {
                    html.append("<tr>\n");
                    html.append("<td>").append(resultSet.getString("state_abbr")).append("</td>\n");
                    html.append("<td>").append(resultSet.getString("state_name")).append("</td>\n");
                    html.append("<td>").append(resultSet.getString("capital")).append("</td>\n");
                    html.append("<td>").append(resultSet.getString("date_admitted")).append("</td>\n");

                    // Format the population integer with comma separators
                    html.append("<td>")
                        .append(String.format("%,d", resultSet.getInt("approx_pop_2020")))
                        .append("</td>\n");

                    html.append("</tr>\n");
                }

                html.append("</tbody>\n</table>\n");
            }
        }
        catch (java.sql.SQLException e) {
            return popupAlert("Error retrieving record: " + e.getMessage());
        }

        return html.toString();
    }

    // ---------------------------------------------------------------
    // create
    // ---------------------------------------------------------------

    /**
     * Inserts a new state record into the database using the field
     * values gathered from the Create form.
     *
     * A PreparedStatement is used to safely embed the user-supplied
     * values into the INSERT statement. The state abbreviation is
     * the primary key and must be unique.
     *
     * @param stateAbbr   two-letter postal abbreviation (primary key)
     * @param stateName   full name of the state
     * @param capital     name of the state capital city
     * @param dateAdmitted date the state joined the Union, in yyyy-MM-dd format
     * @param population  approximate 2020 Census population
     * @return a status message describing the result of the insert
     */
    public String create(String stateAbbr, String stateName, String capital,
                          String dateAdmitted, int population) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        try (java.sql.PreparedStatement ps = connection.prepareStatement(
                "INSERT INTO rBreutzmannStatesdata "
              + "(state_abbr, state_name, capital, date_admitted, approx_pop_2020) "
              + "VALUES (?, ?, ?, ?, ?)")) {

            ps.setString(1, stateAbbr);
            ps.setString(2, stateName);
            ps.setString(3, capital);
            ps.setString(4, dateAdmitted);
            ps.setInt(5, population);
            ps.executeUpdate();

            return "<p class='success'>Added " + stateName + " (" + stateAbbr + ") to the database.</p>";
        }
        catch (java.sql.SQLException e) {
            return popupAlert("Error adding record: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------
    // editForm
    // ---------------------------------------------------------------

    /**
     * Retrieves a single state record by its primary key and returns
     * an HTML form with every field pre-filled from the current
     * record. The Abbreviation field is displayed in a non-updatable
     * (readonly) input, with its value also carried in a hidden field
     * so it is still submitted along with the rest of the form.
     *
     * A hidden formStage field distinguishes this update submission
     * from the initial dropdown selection so the calling JSP can tell
     * the two POSTs apart.
     *
     * @param stateAbbr  the two-letter postal abbreviation to look up
     * @param requestURL the form action target (e.g., "CRUD_Update.jsp")
     * @return an HTML string containing the pre-filled edit form
     */
    public String editForm(String stateAbbr, String requestURL) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        try (java.sql.PreparedStatement ps = connection.prepareStatement(
                "SELECT state_abbr, state_name, capital, date_admitted, approx_pop_2020 "
              + "FROM rBreutzmannStatesdata WHERE state_abbr = ?")) {

            ps.setString(1, stateAbbr);

            try (java.sql.ResultSet resultSet = ps.executeQuery()) {

                if (!resultSet.next()) {
                    return popupAlert("No record found for state abbreviation: " + stateAbbr);
                }

                String abbr        = resultSet.getString("state_abbr");
                String stateName   = resultSet.getString("state_name");
                String capital     = resultSet.getString("capital");
                String dateAdmitted = resultSet.getString("date_admitted");
                int population     = resultSet.getInt("approx_pop_2020");

                StringBuilder html = new StringBuilder();

                html.append("<form method='post' action='").append(requestURL).append("'>\n");

                html.append("<input type='hidden' name='formStage' value='update'>\n");
                html.append("<input type='hidden' name='stateAbbr' value='").append(abbr).append("'>\n");

                html.append("<label for='stateAbbrDisplay'>Abbreviation:</label>\n");
                html.append("<input type='text' id='stateAbbrDisplay' value='").append(abbr)
                    .append("' readonly>\n");

                html.append("<label for='stateName'>State Name:</label>\n");
                html.append("<input type='text' id='stateName' name='stateName' maxlength='50' ")
                    .append("value='").append(stateName).append("' required>\n");

                html.append("<label for='capital'>Capital:</label>\n");
                html.append("<input type='text' id='capital' name='capital' maxlength='50' ")
                    .append("value='").append(capital).append("' required>\n");

                html.append("<label for='dateAdmitted'>Date Admitted:</label>\n");
                html.append("<input type='date' id='dateAdmitted' name='dateAdmitted' ")
                    .append("value='").append(dateAdmitted).append("' required>\n");

                html.append("<label for='population'>2020 Population:</label>\n");
                html.append("<input type='number' id='population' name='population' min='0' ")
                    .append("value='").append(population).append("' required>\n");

                html.append("<input type='submit' value='Update State'>\n");
                html.append("</form>\n");

                return html.toString();
            }
        }
        catch (java.sql.SQLException e) {
            return popupAlert("Error loading record for edit: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------
    // update
    // ---------------------------------------------------------------

    /**
     * Updates an existing state record with new field values gathered
     * from the Update form. The primary key (stateAbbr) is not
     * changed; it is only used to locate the record to update.
     *
     * A PreparedStatement is used to safely embed the user-supplied
     * values into the UPDATE statement.
     *
     * @param stateAbbr   two-letter postal abbreviation (primary key, unchanged)
     * @param stateName   full name of the state
     * @param capital     name of the state capital city
     * @param dateAdmitted date the state joined the Union, in yyyy-MM-dd format
     * @param population  approximate 2020 Census population
     * @return a status message describing the result of the update
     */
    public String update(String stateAbbr, String stateName, String capital,
                          String dateAdmitted, int population) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        try (java.sql.PreparedStatement ps = connection.prepareStatement(
                "UPDATE rBreutzmannStatesdata "
              + "SET state_name = ?, capital = ?, date_admitted = ?, approx_pop_2020 = ? "
              + "WHERE state_abbr = ?")) {

            ps.setString(1, stateName);
            ps.setString(2, capital);
            ps.setString(3, dateAdmitted);
            ps.setInt(4, population);
            ps.setString(5, stateAbbr);

            int rowsUpdated = ps.executeUpdate();

            if (rowsUpdated == 0) {
                return "<p class='error'>No record found for state abbreviation: " + stateAbbr + "</p>";
            }

            return "<p class='success'>Updated " + stateName + " (" + stateAbbr + ") in the database.</p>";
        }
        catch (java.sql.SQLException e) {
            return popupAlert("Error updating record: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------
    // delete
    // ---------------------------------------------------------------

    /**
     * Deletes an existing state record from the database by its
     * primary key.
     *
     * A PreparedStatement is used to safely embed the user-supplied
     * key into the DELETE statement.
     *
     * @param stateAbbr the two-letter postal abbreviation to delete
     * @return a status message describing the result of the delete
     */
    public String delete(String stateAbbr) {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        try (java.sql.PreparedStatement ps = connection.prepareStatement(
                "DELETE FROM rBreutzmannStatesdata WHERE state_abbr = ?")) {

            ps.setString(1, stateAbbr);

            int rowsDeleted = ps.executeUpdate();

            if (rowsDeleted == 0) {
                return "<p class='error'>No record found for state abbreviation: " + stateAbbr + "</p>";
            }

            return "<p class='success'>Deleted state (" + stateAbbr + ") from the database.</p>";
        }
        catch (java.sql.SQLException e) {
            return popupAlert("Error deleting record: " + e.getMessage());
        }
    }

    // ---------------------------------------------------------------
    // readAll
    // ---------------------------------------------------------------

    /**
     * Retrieves every state record from the database and returns
     * the result as an HTML table.
     *
     * The returned table includes a thead row with column headers
     * and one tbody row per state, ordered alphabetically by
     * abbreviation.
     *
     * @return an HTML string containing every record in the table
     */
    public String readAll() {

        if (connectionError != null) {
            return popupAlert(connectionError);
        }

        StringBuilder html = new StringBuilder();
        String errorMessage = null;

        html.append("<table>\n");

        // Table header row describing each field
        html.append("<thead>\n<tr>\n");
        html.append("<th>Abbreviation</th>\n");
        html.append("<th>State Name</th>\n");
        html.append("<th>Capital</th>\n");
        html.append("<th>Date Admitted</th>\n");
        html.append("<th>2020 Population</th>\n");
        html.append("</tr>\n</thead>\n");

        html.append("<tbody>\n");

        try (java.sql.ResultSet resultSet = statement.executeQuery(
                "SELECT state_abbr, state_name, capital, date_admitted, approx_pop_2020 "
              + "FROM rBreutzmannStatesdata ORDER BY state_abbr ASC")) {

            while (resultSet.next()) {
                html.append("<tr>\n");
                html.append("<td>").append(resultSet.getString("state_abbr")).append("</td>\n");
                html.append("<td>").append(resultSet.getString("state_name")).append("</td>\n");
                html.append("<td>").append(resultSet.getString("capital")).append("</td>\n");
                html.append("<td>").append(resultSet.getString("date_admitted")).append("</td>\n");

                // Format the population integer with comma separators
                html.append("<td>")
                    .append(String.format("%,d", resultSet.getInt("approx_pop_2020")))
                    .append("</td>\n");

                html.append("</tr>\n");
            }
        }
        catch (java.sql.SQLException e) {
            errorMessage = "Error retrieving records: " + e.getMessage();
        }

        html.append("</tbody>\n</table>\n");

        if (errorMessage != null) {
            html.append(popupAlert(errorMessage));
        }

        return html.toString();
    }

    // ---------------------------------------------------------------
    // closeConnection
    // ---------------------------------------------------------------

    /**
     * Closes the JDBC statement and connection held by this bean.
     * Call this method when the bean is no longer needed.
     */
    public void closeConnection() {

        try {
            if (statement  != null) statement.close();
            if (connection != null) connection.close();
        }
        catch (java.sql.SQLException sqle) {
            System.out.print("SQL Exception on close: " + sqle);
        }
    }
}
