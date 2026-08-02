package tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.PageContext;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

/*
 * The three tag-handler classes below implement the <ct:...> tags used
 * in customTagsDemo.jsp. Each one is wired to its tag name by
 * customTags.tld. They're kept together in one file here just to make
 * them easier to present; in a real project each class would live in
 * its own .java file (tags/DateFormatTag.java, etc.).
 */

/**
 * Tag: <ct:formatDate value="..." pattern="..." />
 *
 * Reads a date string in whatever format the caller says it is in (the
 * "pattern" attribute, e.g. "MM/dd/yyyy") and writes it back out to the
 * page in a fixed YYYY/MM/DD format. A page can drop this tag anywhere
 * it needs a date displayed consistently, no matter what format that
 * date happened to arrive in (a form field, a database column, a query
 * string, etc.).
 */
class DateFormatTag extends SimpleTagSupport {

    // The output format is fixed by design -- this tag's whole job is to
    // normalize every date on the page to YYYY/MM/DD, so it isn't configurable.
    private static final DateTimeFormatter OUTPUT_FORMAT = DateTimeFormatter.ofPattern("yyyy/MM/dd");

    private String value;   // the raw date text supplied by the caller
    private String pattern; // the pattern describing what format "value" is in

    // These setters are called by the JSP engine because the TLD declares
    // "value" and "pattern" as attributes of this tag.
    public void setValue(String value) {
        this.value = value;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    @Override
    public void doTag() throws JspException, IOException {
        try {
            DateTimeFormatter inputFormat = DateTimeFormatter.ofPattern(pattern);
            LocalDate date = LocalDate.parse(value, inputFormat);
            getJspContext().getOut().write(date.format(OUTPUT_FORMAT));
        } catch (DateTimeParseException e) {
            throw new JspException("formatDate tag could not parse \"" + value
                    + "\" using pattern \"" + pattern + "\"", e);
        }
    }
}

/**
 * Tag: <ct:loggedIn> ... widget markup ... </ct:loggedIn>
 *
 * Wraps a block of JSP content -- a "widget" -- that should only render
 * when the current user is logged in. A real application would check
 * this against whatever authentication system it uses; there is no such
 * backend here, so login state is stood in for by a single session
 * attribute, "loggedInUser", that a real login servlet would normally
 * set after authenticating the user.
 *
 * If that attribute is missing, the tag's body is simply never
 * invoked, so none of the markup between the open and close tags
 * reaches the page.
 */
class LoggedInTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) getJspContext();
        Object loggedInUser = pageContext.getSession().getAttribute("loggedInUser");

        if (loggedInUser != null) {
            getJspBody().invoke(null);
        }
        // else: skip the body entirely -- the widget stays hidden
    }
}

/**
 * Tag: <ct:managerOnly> ... widget markup ... </ct:managerOnly>
 *
 * Wraps a widget that should only render for users whose role is
 * "MANAGER". As with LoggedInTag, there is no real roles/permissions
 * backend here, so the role is read from a single session attribute,
 * "userRole", that a real login process would set after authenticating
 * the user and looking up their permission level.
 */
class ManagerRoleTag extends SimpleTagSupport {

    private static final String REQUIRED_ROLE = "MANAGER";

    @Override
    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) getJspContext();
        Object userRole = pageContext.getSession().getAttribute("userRole");

        if (REQUIRED_ROLE.equals(userRole)) {
            getJspBody().invoke(null);
        }
        // else: skip the body -- user isn't a manager, widget stays hidden
    }
}
