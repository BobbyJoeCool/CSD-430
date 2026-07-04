/**
 * Author:     Robert Breutzmann
 * Assignment: CSD-430 Module 5 and 6 - Assignment 5.3/6.3
 * Purpose:    JavaBean that handles all database access for the
 *             rBreutzmannStatesdata table in the CSD430 database.
 *             Provides a dropdown form populated with all state
 *             abbreviations and a method to read one state record
 *             by its primary key.
 * Due Date:   July 5th, 2026
 */
package database;

/**
 * Database access bean for the rBreutzmannStatesdata table.
 *
 * Connects to the CSD430 database as student1 and exposes two
 * read operations: one that builds a dropdown form containing all
 * state abbreviations, and one that returns a full HTML table for
 * the state record matching the supplied abbreviation.
 *
 * This class implements java.io.Serializable as required by the
 * JavaBean specification.
 */
public class DbBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private java.sql.Connection connection;
    private java.sql.Statement  statement;

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
            System.out.print("Driver not found: " + cnfe);
        }
        catch (java.sql.SQLException sqle) {
            System.out.print("SQL Exception: " + sqle);
        }
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

        java.sql.ResultSet resultSet = null;
        StringBuilder html = new StringBuilder();

        // Query every primary key in alphabetical order for the dropdown
        try {
            resultSet = statement.executeQuery(
                    "SELECT state_abbr FROM rBreutzmannStatesdata ORDER BY state_abbr ASC");
        }
        catch (java.sql.SQLException e) {
            System.out.print("SQL Exception in formGetPK: " + e);
        }

        html.append("<form method='post' action='").append(requestURL).append("'>\n");
        html.append("<label for='stateAbbr'>Select a State:</label>&nbsp;\n");
        html.append("<select name='stateAbbr' id='stateAbbr'>\n");

        // Walk the result set and add one option per state abbreviation
        try {
            while (resultSet.next()) {
                String abbr = resultSet.getString(1);
                html.append("<option value='").append(abbr).append("'>")
                    .append(abbr).append("</option>\n");
            }
        }
        catch (java.sql.SQLException e) {
            System.out.print("SQL Exception reading keys: " + e);
        }

        html.append("</select>\n");
        html.append("<input type='submit' value='Look Up State' />\n");
        html.append("</form>\n");

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

        java.sql.ResultSet resultSet = null;
        StringBuilder html = new StringBuilder();

        // PreparedStatement prevents SQL injection from the form input
        try {
            java.sql.PreparedStatement ps = connection.prepareStatement(
                    "SELECT state_abbr, state_name, capital, date_admitted, approx_pop_2020 "
                  + "FROM rBreutzmannStatesdata WHERE state_abbr = ?");
            ps.setString(1, stateAbbr);
            resultSet = ps.executeQuery();
        }
        catch (java.sql.SQLException e) {
            System.out.print("SQL Exception in read: " + e);
            return "<p>Error retrieving record.</p>";
        }

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

        try {
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
        }
        catch (java.sql.SQLException e) {
            System.out.print("SQL Exception reading record: " + e);
        }

        html.append("</tbody>\n</table>\n");

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
