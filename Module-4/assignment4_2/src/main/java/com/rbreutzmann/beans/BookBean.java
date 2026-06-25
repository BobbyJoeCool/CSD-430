/**
 * Author:     Robert Breutzmann
 * Assignment: Module 4 Assignment - JavaBeans
 * Purpose:    JavaBean representing a single book record from the Aven Cycle series.
 *             Holds title, author, year published, synopsis, and cover image filename.
 *             Used by index.jsp to populate and display the book data table.
 * Due Date:   June 28th, 2026
 */
package com.rbreutzmann.beans;

/**
 * A JavaBean representing one book record from the Aven Cycle series by Cass Morris.
 *
 * <p>This bean holds five fields describing a single book: title, author,
 * year published, synopsis, and cover image filename. It implements
 * {@link java.io.Serializable} as required for JavaBeans used in JSP pages.</p>
 */
public class BookBean implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    private String title;
    private String author;
    private String yearPublished;
    private String synopsis;
    private String coverImage;

    /**
     * No-argument constructor required by the JavaBean specification.
     * Initializes all fields to empty strings.
     */
    public BookBean() {
        title        = "";
        author       = "";
        yearPublished = "";
        synopsis     = "";
        coverImage   = "";
    }

    /**
     * Returns the book's title.
     *
     * @return the title of the book
     */
    public String getTitle() {
        return title;
    }

    /**
     * Sets the book's title.
     *
     * @param title the title to assign to this book
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Returns the name of the book's author.
     *
     * @return the author's name
     */
    public String getAuthor() {
        return author;
    }

    /**
     * Sets the name of the book's author.
     *
     * @param author the author name to assign
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * Returns the year the book was first published.
     *
     * @return the publication year as a string
     */
    public String getYearPublished() {
        return yearPublished;
    }

    /**
     * Sets the year the book was first published.
     *
     * @param yearPublished the publication year to assign
     */
    public void setYearPublished(String yearPublished) {
        this.yearPublished = yearPublished;
    }

    /**
     * Returns a brief synopsis of the book's central conflict.
     *
     * @return the synopsis text
     */
    public String getSynopsis() {
        return synopsis;
    }

    /**
     * Sets the synopsis describing the book's central conflict.
     *
     * @param synopsis the synopsis text to assign
     */
    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    /**
     * Returns the filename of the book's cover image.
     * The image is expected to reside in the webapp's {@code images/} directory.
     *
     * @return the cover image filename (e.g., {@code "FromUnseenFire.png"})
     */
    public String getCoverImage() {
        return coverImage;
    }

    /**
     * Sets the filename of the book's cover image.
     *
     * @param coverImage the image filename to assign
     */
    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage;
    }
}
