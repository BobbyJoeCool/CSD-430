# CSD 430: Server Side Development

This course examines the PHP Server-side scripting language. Topics include cookies and sessions, objects and methods, collections, data types, and security coding techniques. In addition, students will be introduced to Linux command line methods to navigate and set variables in a Linux environment.

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

**Please watch all required videos and examples for this Module located in the Module 1 Resources Folder:**

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
