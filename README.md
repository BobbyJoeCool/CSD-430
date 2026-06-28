# CSD 430: Server Side Development

This course examines the PHP Server-side scripting language. Topics include cookies and sessions, objects and methods, collections, data types, and security coding techniques. In addition, students will be introduced to Linux command line methods to navigate and set variables in a Linux environment.

## Table of Contents

- [Week One](#week-one) — [Module One: Installation and Configuration](#module-one-instasllation-and-configuration)
- [Week Two](#week-two) — [Module Two: Java Scriptlets](#module-two-java-scriptlets)
- [Week Three](#week-three) — [Module Three: JSP Forms](#module-three-jsp-forms)
- [Week Four](#week-four) — [Module Four: JavaBeans](#module-four-javabeans)
- [Week Five](#week-five) — [Modules Five & Six: CRUD - READ, JDBC, and JavaBeans](#modules-five--six-crud---read-jdbc-and-javabeans)
- [Week Six](#week-six) — [Module Seven: Module Title](#module-seven-module-title)
- [Week Seven](#week-seven) — [Module Eight: CRUD - UPDATE, JDBC, and JavaBeans](#module-eight-crud---update-jdbc-and-javabeans)
- [Week Eight](#week-eight) — [Module Nine: CRUD - DELETE, JDBC, and JavaBeans](#module-nine-crud---delete-jdbc-and-javabeans)
- [Week Nine](#week-nine) — [Module Ten: Custom Tags](#module-ten-custom-tags) / [Module Eleven: Apache Maven & Coding Standards](#module-eleven-apatche-maven--coding-standards)

### Course Skills

- Develop web pages using PHP.
- Create dynamic pages based on user input.
- Deploy web pages allowing web access.

### Course Objectives

1. Describe the fundamental concepts in PHP programming.
1. Develop Dynamic Web Pages Based on User Input.
1. Use PHP data types.
1. Define functions.
1. Use built-in PHP functions.
1. Use control statements to solve problems.
1. Write programs using Arrays.
1. Write programs that use loops to solve problems.

## Week One

**Monday, June 1st, 2026 through Sunday, June 6th, 2026**

### Module One: Instasllation and Configuration

During this module, we will explore the installation and configuration of Jakarta and Eclipse. We will also set up this course’s GitHub repository.

Most third-party IDEs support Jakarta. For this class, we will use Eclipse as the IDE. However, you are free to use a different IDE if you wish. Three other available IDEs include IntelliJ IDEA, VS Code, and NetBeans.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 1 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 1 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 1 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**
    - [Eclipse](https://www.eclipse.org/downloads/packages/)
    - [Intellij Idea](https://www.jetbrains.com/idea/)
    - [NetBeans](https://netbeans.apache.org/front/main/download/index.html)
    - [VS Code](https://code.visualstudio.com/)
    - [Jakarta EE Release Versions](https://www.educative.io/answers/what-is-jakarta-ee?utm_term=&utm_campaign=%5BNew+-+Mar+24%5D+Brand+Core+Performance+Max&utm_source=adwords&utm_medium=ppc&hsa_acc=5451446008&hsa_cam=21099703438&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=5&gclid=EAIaIQobChMIs_GxwL7ChwMV3DgIBR2UCACPEAAYASAAEgKBq_D_BwE) (Jakarta EE, 2024).
    - [What is Jakarta EE?](https://www.educative.io/answers/what-is-jakarta-ee?utm_term=&utm_campaign=%5BNew+-+Mar+24%5D+Brand+Core+Performance+Max&utm_source=adwords&utm_medium=ppc&hsa_acc=5451446008&hsa_cam=21099703438&hsa_grp=&hsa_ad=&hsa_src=x&hsa_tgt=&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=5&gclid=EAIaIQobChMIs_GxwL7ChwMV3DgIBR2UCACPEAAYASAAEgKBq_D_BwE) (educative, 2024).
    - [Eclipse Foundation List of Projects](https://projects.eclipse.org/) (Eclipse Foundation, 2024).
    - [Eclipse Installer 2024-06 R](https://www.eclipse.org/downloads/packages/installer) (Eclipse Foundation, 2024).

**Module Resources**

- Download and Install Spring Tool Suite 4.
- Install Spring Tools 4 into an existing Eclipse IDE.
- Eclipse Start Video (Bellevue University, 2024).
- Tomcat 2 Video (Bellevue University, 2024).
- Tomcat Eclipse Video (Bellevue University, 2024).
- M1_JSP_Table_Example.zip
- CSD_430_CLI_Commands
- CSD_430_GitHub_Repository
- Install Eclipse IDE for Jakarta EE Dev (Cameron, McKenzie, YouTube, 2020).

#### Discussion Board

##### Introduction Discussion

Please reintroduce yourself to your cohort by posting an introduction of yourself. If you feel comfortable, tell us a little about where you are from and any hobbies that you enjoy.

##### Discussion 1.1: Getting Started with Jakarta (Java EE)

Select one of the topics below. Then, answer the “what,” “how,” and “why” questions below about your selected topic. Provide a simple code example to further illustrate your thoughts.

- Java Enterprise Edition (JEE)
- Jakarta
- JavaBeans
- Eclipse

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 1.2: GitHub Repository Setup

For this module’s assignment, we will be creating a GitHub repository using git and the CLI. The repository we create in this assignment will be used throughout the course to host the coding assignments. If you have not already installed git (Install Git), please do so before continuing. Make sure that you include the steps to set the global username and global email address.

Instructions:

- Click on each instruction box below to expand the instructions.
- Complete the setup instructions and save the following items into a single Word document:
  - Link to your GitHub repository
  - Screenshot of your GitHub repository
  - Screenshot of your local directory, following the structure format provided in the instructions below.

1. Local Directory Setup Instructions
   - Open a command prompt window.
     - If you are on a Windows machine, use PowerShell or cmd (press the Windows key and start typing the name of the command prompt you want to use).
     - If you are on macOS, use the Terminal.
     - If you are on Linux, use the Terminal.
   - Navigate to your user directory.
     - If you are on Windows, enter: cd \
     - If you are on macOS/Linux, enter: cd ~
   - Create a new directory and name it csd
     - mkdir csd
   - Change directory into the csd directory.
     - cd csd
2. Repository Setup Instructions
   - Go to github.com and sign up.
   - Sign into GitHub.
   - Create a new GitHub repository and name it csd-430.
   - Enter a description.
   - Make the repository public and “Initialize this repository with a README.md” file.
   - Add a .gitignore file (Python).
   - Choose “Create repository.”
3. Clone Instructions

- Open a command prompt window.
  - If you are on a Windows machine, use PowerShell or cmd (press the Windows key and start typing the command prompt you want to use).
  - If you are on macOS, use the Terminal.
  - If you are on Linux, use the Terminal.
- Sign in to GitHub (if you are not already).
- Click on your csd-430 repository.
- Click on the green Code button and copy the URL for the csd-430 repository.
- In the command prompt or terminal window, verify you are in the correct working directory (you should be in the csd directory) and enter:
- git clone `copied URL`
- Verify the repository was created.
  - For Windows, enter: dir
  - For macOS/Linux, enter: ls

##### Assignment 1.3

After successful installation and configuration of Java, Jakarta-Tomcat, and your selected IDE, capture screenshots displaying your success with each. Create a simple JSP file and capture an image showing that it is correctly functioning. Attach all screenshots along with the JSP application files.

- **Note:** Your first JSP file must have Java code and HTML tags to ensure your file conforms to Java, JSP, and HTML coding standards.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
  - \<your_last_name\>-\<module_number\>\<course\>.zip.
  - Example: darrell_mod_1_csd430.zip.

#### Summary

## Week Two

**Monday, June 8th, 2026 through Sunday, June 14th, 2026**

### Module Two: Java Scriptlets

During this module, you will be exposed to dynamic HTML pages using JSP Scriptlets. You’ll work with Java code in Scriptlet sections with all HTML tags outside Scriptlet sections. You will also use external CSS sheets to modify the style.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 2 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 2 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 2 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [JSP - Expression Language (EL)](https://www.tutorialspoint.com/jsp/jsp_expression_language.htm) (tutorialspoint.com, 2024).
- [Introduction to JSP](https://www.geeksforgeeks.org/advance-java/introduction-to-jsp/) (geeksforgeeks.org, 2024).
- [How To Add CSS](https://www.w3schools.com/css/css_howto.asp) (w3schools.com, 2024).
- [Step-by-step Guide to Use GitHub with Eclipse](https://medium.com/@zandra.harner/step-by-step-guide-to-use-github-with-eclipse-1ce4f3c193f1) (Harner, medium.com, 2020).
- [Managing your personal access tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) (GitHub Docs, 2024).

**Module Resources**

- Directory Structure Video (Bellevue University, 2024).
- Tags and Functions Video (Bellevue University, 2024).
    - M2_Code_Examples.zip
- Applying A CSS Layout To A JSP Web Application (Susan Ceklosky, YouTube, 2014).

#### Discussion Board

**Discussion Question:**

Select one of the topics below. Then, answer the “what,” “how,” and “why” questions below about your selected topic. Provide a simple code example to further illustrate your thoughts.

- JSPs Dynamic verses Static
- JSP Weaknesses and Strengths

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 2.2

**Assignment:**

For this week’s assignment, you will create a dynamic HTML page using JSP Scriptlets. You will include Java code in Scriptlet sections and place all HTML tags outside Scriptlet sections. You also use external CSS sheets to modify the style. Lastly, on your page, you will create a table holding the data to be displayed. For the data, create a record with data files related to one of the following:

- A book you have enjoyed reading.
- A movie you have enjoyed reading.
- A state or country you have enjoyed visiting.

**Then, you will need to:**

- Document your code.
- Use Scriptlets for holding Java code.
- All HTML tags will be outside of JavaScriptlets.
- Display data in an HTML table format.
- The data will be grouped into topical categories.
- Include other display items such as field and recode descriptions, title, and overall data description.
- Data will have a minimum of 5 records with three fields.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - \<your_last_name\>-\<module_number\>\<course\>.zip.
    - Example: darrell_mod_2_csd430.zip.

#### Summary

## Week Three

**Monday, June 15th, 2026 through Sunday, June 21st, 2026**

### Module Three: JSP Forms

In the last module, we worked with dynamic HTML pages using JSP Scriptlets. We put Java code in Scriptlet sections, still having all HTML tags outside the Scriptlet sections. We also used external CSS sheets to modify the style, and we will continue to do so in all future applications.

In this module, we will use forms to gather data from a user. We will use multiple types of user inputs to gather data. We’ll also investigate form security aspects. Lastly, we will use a JSP to capture the inputs and then display the data in a replying JSP output display.  

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 3 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 3 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 3 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [JSP - Expression Language (EL)](https://www.tutorialspoint.com/jsp/jsp_expression_language.htm) (tutorialspoint.com, 2024).
- [Introduction to JSP](https://www.geeksforgeeks.org/advance-java/introduction-to-jsp/) (geeksforgeeks.org, 2024).
- [JSP Program Examples: Registration and Login Form](https://www.guru99.com/jsp-example.html) (guru99.com, 2024).
- [Creating Secure Web Forms: What You Need to Know](https://luxsci.com/blog/creating-secure-web-forms.html) (luxsci.com, 2023).

**Module Resources**

- Forms Video (Bellevue University, 2024).
    - M3_Code_Examples.zip
- Creating a simple .jsp web form (Mike Colbert, YouTube, 2015).

#### Discussion Board

**Discussion Question:**

Select one of the topics below. Then, answer the “what,” “how,” and “why” questions below about your selected topic. Provide a simple code or code snippet example to further illustrate your thoughts.

- Validate input data
- Encrypt data transmission
- Store data securely

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 3.2

For this week’s assignment, you will create a form to gather data from a user. In the form, you must have a minimum of three types of user input and a minimum of five data entry points. You also must have a JSP that the form is submitted to for displaying the data. The form may be a JSP file or an HTML file. However, the return data display must be in a separate JSP file. The form is to gather typical data gathered from a:

- Job application
- Experience feedback for the restaurant’s meal or service received
- Yearly review of an item purchased, car, home, etc.

**For this assignment, you will need to:**

- Document your code
- Use Scriptlets for holding Java code
- All HTML tags will be outside of Java Scriptlets
- Display data in an HTML table format
- Including other display items such as field and recode descriptions, title, and overall data description.
- Data input will have a minimum of 5 fields.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

## Week Four

**Monday, June 22nd, 2026 through Sunday, June 28th, 2026**

### Module Four: JavaBeans

In the last module, we worked with dynamic HTML pages using JSP Scriptlets. We put Java code in [Scriptlet](https://ultra.content.blackboardcdn.com/ultra/uiv4000.17.0-rel.10_bbee9ac#) sections, still having all HTML tags outside the Scriptlet sections. We also used external CSS sheets to modify the style, and we will continue to do that in all future applications.

In this module, we will use Eclipse, JavaBeans, or another IDE. This will introduce us to CRUD-READ. We will create the JavaBean and ensure it implements java.io.Serializable.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 4 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 4 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 4 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [JavaBean class in Java](https://www.geeksforgeeks.org/java/javabean-class-java/) (geeksforgeeks.com, 2023).
- [JavaBeans](https://www.codecademy.com/resources/docs/java/javabeans) (codeacademy.com, 2022).

**Module Resources**
- Compile Issues Video (Bellevue University, 2024).
- JavaBeans (Bellevue University, 2024).
    - M4_Code_Examples.zip

#### Discussion Board

**Discussion Question:**

For the discussion, we will look at different types of Enterprise Java Beans EJBs. Select one of the topics below. Then, answer the “what,” “how,” and “why” questions below about your selected topic. Provide a simple code or code snippet example to further illustrate your thoughts.

Session Beans
Entity
Message-Driven Beans

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 4.2

For this week’s assignment, you will create a JavaBean to hold some data. You will then use a JSP page to gather data from the JavaBean and display it in a nicely formatted display. For the JavaBean, use the data from your Module 2 Java Scriptlet - Data Display assignment.

***For this assignment, you will need to:***

- Document your code
- Use Scriptlets for holding Java code
- All HTML tags will be outside of Java Scriptlets
- Display data in an HTML table format
- Including other display items such as field and recode descriptions, title, and overall data description.
- Ensure the JavaBean implements java.io.Serializable
- Data input will have a minimum of 5 fields.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

## Week Five

**Monday, June 29th, 2026 through Sunday, July 5th, 2026**

### Modules Five & Six: CRUD - READ, JDBC, and JavaBeans

In the last module, we used forms to gather user data. We used multiple types of inputs to gather user-entered data. We investigated the form security aspects. Lastly, we used JSPs to capture user inputs and then displayed the data in a replying JSP output display.

In this module, we will start working with CRUD, which is the acronym for CREATE, READ, UPDATE, and DELETE. We will start working with READ, which is like a search function. It will allow the ability to search and retrieve a specific record or records from the data source. The READ function accesses the data through a JavaBean.

Note: Modules 5 and 6 have been combined for the start of this project.

#### Deliverables

- Review Module Resources.
- Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
- Module 5 & 6 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
- Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
- Module 5 & 6 Assignment - Due by Sunday 11:59 p.m., CST.
- Module 5 & 6 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

[Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples](https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples) (codejava.net, 2019).
[What is CRUD?](https://www.crowdstrike.com/en-us/cybersecurity-101/observability/crud/) (crowdstrike.com, 2022).
[CRUD Operations - What is CRUD?](https://www.freecodecamp.org/news/crud-operations-explained/) (Chris, freecodecamp.org, 2022).
[JavaBean class in Java](https://www.geeksforgeeks.org/java/javabean-class-java/) (geeksforgeeks.org, 2023).
[MySQL](https://www.mysql.com/downloads/) (mysql.com, 2024).
[MySQL Tutorial](https://www.w3schools.com/MySQL/default.asp) (w3schools.com, 2024).

**Module Resources**

- Project Introduction Video (Bellevue University, 2024).
    - M5&6_WEB-07.zip
    - M5&6_CRUD_Examples.zip

#### Discussion Board

**Discussion Question:**

Select one of the topics below. Then, answer the “what,” “how,” and “why” questions below about your selected topic. Provide a simple code or code snippet example to further illustrate your thoughts.

- Use CSRF (Cross-Site Request Forgery) tokens
- Implement CAPTCHA (Completely Automated Public Turing test to tell Computers and Humans Apart)

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 5.2/6.2

**Please read through the instructions for both assignments in this modules before beginning this assignment. **

> !**Note:** Please do not submit more than the project files required for Modules 5 & 6. Doing so will cause you to lose 30% of your grade on this module.

The first step for this project assignment will be to create your database using MySQL. The database will be titled CSD430. Then you will create and populate your table titled data with a minimum of 5 fields, one being a primary key. Insert a minimum of 10 records. For this assignment, you will submit screenshots displaying the completion of creating and populating the table, along with the records held in the table. Lastly, include an SQL file with the code needed to create and populate the table.

Example: larry_movies_data

Select one of the following topics for this project's database:

- Library
- Movies
- States

**For the database, you will:**

- Title the database CSD430.
- The username will be ‘student1’.
- The password will be ‘pass’.
- The table name will be \<your_first_name\>\<data topic\>data.
- Include the PHP table files \<your_first_name\>createTable.php, \<your_first_name\>populateTable.php, \<your_first_name\>dropTable.php.
- For each module, you are to include an updated index.jsp to hold links to all the module’s CRUD deliverables.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

##### Assignments 5.3/6.3

After completing the 5.2 section of this assignment, you will continue setting your database permissions to allow Java access using the JavaBean. You set this permission for the JavaBean, but not through the bean. When you submit your application for this assignment, include your Java code so your instructor will be able to create, populate, and delete the same-titled table. Your instructor will use the same database and table titles for your code to execute correctly.

For this week’s project assignment, you will gather data from a database (db), using a JavaBean, to be displayed. The form will initialize, displaying an HTML Dropdown Menu holding a listing of all the key values held in the db. The user will then be able to select a single unique key and submit the form. The returning JSP will display the data record holding the selected key value. The data is then to be displayed in a table format, having all fields in a separate table column along with field titles in the ‘thead’ section of the table. The input for the user to select from must be inside a JSP page. The display page may be in the same JSP page or in a separate JSP page.

**For this assignment, you will ensure you:**

- Document your code
- Use Scriptlets for holding Java code
- All HTML tags will be outside of Java Scriptlets
- Display data in an HTML table format
- Including other display items such as field and recode descriptions, title, and overall data description.
- Display data will have a minimum of 5 fields.
- Submit all project files, including source code.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

## Week Six

**Monday, July 6th, 2026 through Sunday, July 12th, 2026**

### Module Seven: Module Title

Module Description

#### Deliverables

#### Resources

#### Discussion Board

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

#### Summary

## Week Seven

**Monday, July 13th, 2026 through Sunday, July 19th, 2026**

### Module Eight: CRUD - UPDATE, JDBC, and JavaBeans

In the last module, we continued working with CRUD, focusing on the CREATE aspect. We worked on creating new records, ensuring the uniqueness of the records by maintaining a valid key for each new record. We accomplished this by implementing the usage of JavaBeans holding access to the data.

In this module we will continue working with JavaBeans and CRUD. We will implement the use of the UPDATE function of CRUD. The assignment for this module will involve the ability to modify an existing record.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 8 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 8 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 8 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples - JDBC Executing UPDATE Statement Example](https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples) (Mihn, codejava.net, 2019).
- [JavaBeans](https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples) (codeacademy.com, 2022).
- [Step by Step: Making a Simple CRUD Application Using Java Servlet/JSP](https://www.mitrais.com/news-updates/step-by-step-making-a-simple-crud-application-using-java-servlet-jsp/) (mitrais.com, 2019).
- [Create a Document from a JavaBean](https://docs.ezmeral.hpe.com/datafabric-customer-managed/78/MapR-DB/JSON_DB/create-doc-javabean.html) (hpe.com, 2024).

**Module Resources**

- CRUD Update Video (Bellevue University, 2024).
    - M8_WEB-07.zip Click for more options
    - M8_CRUD_Examples.zip Click for more options
    - M8_WEB-07-Update_Code_Examples.zip Click for more options

#### Discussion Board

**Discussion Question:**

There are basically three types of Cloud computing. Select one of the following Cloud computing topics below. In your writing, be sure to explain the 'what', 'how', and 'why' of the selected topics. Provide a simple code or code snippet example to further illustrate your thoughts.

Private cloud
Public cloud
Hybrid cloud

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 8.2

> !**Note:** Please do not submit more than the Module 5 & 6, Module 7, and Module 8 project files required for Module 8. Doing so will cause you to lose 30% of your grade.

For this module, you will continue to use the same database (db) and table as in the previous module. For this week’s assignment, you will create a form that requests data from a user to be added to the database. The form will hold an HTML dropdown for the user to select a record to be updated. All the values listed in the HTML Dropdown Menu will hold a listing of the key values held in the db. When the user selects the record to be updated, the return JSP will hold all fields in an input tag except for the key field. The key field will be displayed in a non-updatable format. The user can then update the values, and when submitted a return JSP will display the updated record, displaying all the record data in a table format along with a table header showing field types. All pages for this assignment will be JSPs.

Remember, this is Project Part 3, not a new project.

**For this assignment, ensure you:**

- Document your code
- Include the updated index.jsp file
- Include the original create, populate, and delete Java source code file
- Use Scriptlets for holding Java code
- All JSP HTML tags will be outside of Java Scriptlets
- All JSP pages will be displayed in a good-looking format.
- The data record will have a minimum of 5 fields.
- Submit all project files, including source code.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

## Week Eight

**Monday, July 20th, 2026 through Sunday, July 26th, 2026**

### Module Nine: CRUD - DELETE, JDBC, and JavaBeans

In the last module, we continued working with CRUD, focusing on the UPDATE aspect. We worked with updating existing records, maintaining the uniqueness of the record key. We accomplished this by implementing the usage of JavaBeans while holding the data.

In this module, we will continue working with JavaBeans and CRUD. We will implement the use of the DELETE function of CRUD. This assignment will involve the ability to DELETE an existing record.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 9 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 9 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 9 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [CRUD Operations in Java](https://www.scaler.com/topics/crud-operations-in-java/) (Pandey, scaler.com, 2023).
- [Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples - JDBC Execute DELETE Statement Example](https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples) (Mihn, codejava.net, 2019).

**Module Resources**

- CRUD Delete Video (Bellevue University, 2024).
    - M9_CRUD_Examples.zip Click for more options
    - M9_WEB-07-Update_Code_Examples.zip Click for more options

#### Discussion Board

**Discussion Question:**

Select one of the following REpresentational State Transfer (RESTful) topics below. In your writing, be sure to explain the 'what', 'how', and 'why' of the selected topics. Provide a simple code or code snippet example to further illustrate your thoughts.

- Uniform Interface
- Client-Server
- Stateless
- Cacheable
- Layered System
- Code on Demand (Optional)

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 9.2

> !**Note:** Please remember that for this module, you are to submit all files for Modules 5 & 6, Module 7, Module 8, and Module 9.

For this module, you will continue to use the same database (db) and table as in the previous module. For this week’s assignment, you will create a form that displays all records in a table format. The form will also hold an HTML select dropdown holding all key fields. The user will then select the key for the record to be deleted. When submitted, the return will display all remaining fields left in the same table format. The return page will also hold the HTML select dropdown holding all remaining keys. The user may then select another key to delete another record. When and if all records are deleted, the returning page will show an empty table still holding the \<thaed\> row. For this assignment, you may use more than one JSP. Remember, this is Project Part 4, not a new project.

For this assignment, you will ensure you:

- Document your code.
- Use Scriptlets for holding Java code.
- All HTML tags will be outside of Java Scriptlets.
- Display data in an HTML table format.
- Include other display items such as field and recode descriptions, title, and overall data description.
- Display data will have a minimum of 5 fields.
- Submit all project files, including source code.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

## Week Nine

**Monday, July 27th, 2026 through Sunday, August 2nd, 2026**

### Module Ten: Custom Tags

In the last module, we continued working with CRUD, focusing on the DELETE aspect. We worked on deleting existing records based on the selection of a primary data field, the record key. We accomplished this by implementing the usage of JavaBeans holding access to the data.

In this module, we will focus on the process, advantages, and disadvantages of custom tags using Java. In addition, we will look at some of the more advanced abilities of working with JSPs.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 10 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 10 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 10 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [Using Custom Tags](https://docs.oracle.com/javaee/1.4/tutorial/doc/JSPIntro9.html) (oracle, n.d.).
- [Using html properties in custom tag in jsp](https://coderanch.com/t/730528/java/html-properties-custom-tag-jsp) (coderanch.com, n.d.).

**Module Resources**

- M10_Custom_Tag_01.zip
- M10_Custom_Tag_02.zip

#### Discussion Board

**Discussion Question:**

Select one of the following advanced JSP topics below. In your writing, be sure to explain the 'what', 'how', and 'why' of the selected topics. Provide a simple code or code snippet example to further illustrate your thoughts.

- JSP Cookies
- JSP Redirect and Forward
- JSP Sending Email
- JSP File Uploading

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 10.2

Write a (700-word minimum) paper on the topic of Creating Custom Tags. Address the advantages and or disadvantages of custom tags. Review the requirements needed to correctly develop a custom tag. Include a discussion of your opinions of custom tags, explaining your reasons for considering them, and or avoiding them. Remember to correctly cite your resources. Write the paper in your own words, correctly quoting all you use in your paper, keeping the amount quoted at 5 – 10%. Do not have any copied material that is not correctly cited. Be sure to provide some simple coding segments outside of your paper.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary

### Module Eleven: Apatche Maven & Coding Standards

In the last module, we focused on the process, advantages, and disadvantages of custom tags using Java. In addition, we looked at some of the more advanced abilities of working with JSPs.

This module will allow us to look at the Apache Maven programming languages often used while working with the Spring Framework.

#### Deliverables

1. Review Module Resources.
1. Course Introduction Discussion Board - Due by Sunday 11:59 p.m., CST.
1. Module 11 Discussion Board Initial Post - Due by Thursday 11:59 p.m., CST.
1. Discussion Board Responses - Due by Sunday 11:59 p.m., CST.
1. Module 11 Assignment - Due by Sunday 11:59 p.m., CST.
1. Module 11 Programming Assignment - Due by Sunday 11:59 p.m., CST.

#### Resources

**Review**

- [Apache Maven](https://www.geeksforgeeks.org/apache-maven/)
- [What is Maven in Java? ](https://www.browserstack.com/guide/what-is-maven-in-java)
- [What is Maven?](https://www.geeksforgeeks.org/what-is-maven/)

#### Discussion Board

**Discussion Question:**

For this discussion board, you will write about the Maven programming language. In your discussion, include how Maven relates to or is like Java. Discuss the advantages and disadvantages of using Maven over Java. In your writing, be sure to explain the “what,” “how,” and “why” of the selected topic. Provide a simple code or code snippet example to further illustrate your thoughts. 

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

#### Assignments

##### Assignment 11.2: Coding Standards - Paper

Write a (700-word minimum) paper on the topic of Coding Standards. For this assignment, you are to address different coding standards in the corporate programming world. Write about what they are, how they are used, and their importance.

As you will write about a topic on the Discussion Board, ensure you cover the What, How, and Why in this paper. Remember to correctly cite your resources. Write the paper in your own words, correctly quoting all you use in your paper, keeping the amount quoted at 5 – 10%. Do not have any copied material that is not correctly cited. Be sure to provide some simple coding segments outside of your paper.

**'What', 'How', and 'Why'**

- **What:** What are you writing about? Give the audience a brief overview of the topic by providing them with foundational information (history, background information, etc.).

- **How:** How is the information relevant? Apply personal knowledge (this can be through research or actual practiced knowledge) to build trust with the audience.

- **Why:** Justify your position and/or course of action. The audience needs proof the information you are presenting is creditable and actionable.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

##### Assignment 11.3: Redo Assignment

For this assignment, you may redo one of the programming assignments you previously did and are not satisfied with your score.

Attach your work to this assignment, and you will be given makeup points based on the quality of the update.

- Include which module assignment you are **redoing for this assignment**.

**Assignment Requirements and Grading:**

- This assignment is due by Sunday, 11:59 p.m., CST.
- Add the necessary documentation as described in the [following instructions](/Course_Info/Documentation%20Requirements.pdf).
- Capture screenshots, combined in a single Word document, demonstrating you have correctly installed and configured Java and JavaFX. Include your name, date, and assignment number.
- Submit your assignment by clicking in the Module Assignment, then use the Attach Files icon from the toolbar (the paperclip). Select your assignment file, add the URL to your GitHub repository in the comments area, and then click on Submit.
    - /<your_last_name/>-/<module_number/>/<course/>.zip.
    - Example: darrell_mod_3_csd430.zip.

#### Summary