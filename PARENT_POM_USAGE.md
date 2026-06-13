# Using the CSD-430 Parent POM

The workspace now has a **parent POM** (`/Users/Bob/csd/CSD-430/pom.xml`) that automatically configures Java 25 and all standard Maven plugins for any child project.

## How to Use for New Projects

When you create a new Maven project or want to enable parent inheritance:

### 1. Add Parent Reference to `pom.xml`

Add this `<parent>` section right after `<modelVersion>`:

```xml
<project>
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.csd430</groupId>
    <artifactId>csd430-parent</artifactId>
    <version>1.0</version>
    <relativePath>../../pom.xml</relativePath>  <!-- Adjust path based on project location -->
  </parent>

  <artifactId>your-project-name</artifactId>
  <packaging>jar</packaging>
  <!-- Rest of your config -->
</project>
```

### 2. Remove Redundant Configuration

Delete these from your child `pom.xml` (inherited from parent):

- `<properties>` section with `maven.compiler.source/target`
- `<pluginManagement>` section (all plugins are managed in parent)
- JUnit `<version>` tag (version managed by parent)

Just keep:

```xml
<dependencies>
  <dependency>
    <groupId>junit</groupId>
    <artifactId>junit</artifactId>
    <scope>test</scope>
    <!-- NO version tag needed - inherited from parent -->
  </dependency>
</dependencies>
```

### 3. Verify It Works

```bash
mvn clean compile
```

Maven will automatically pick up:
- ✅ Java 25 as source/target
- ✅ All plugin versions (compiler 3.13.0, surefire 3.1.0, etc.)
- ✅ UTF-8 encoding
- ✅ JUnit 4.13.2

## Parent POM Contents

The parent POM (`/Users/Bob/csd/CSD-430/pom.xml`) configures:

| Component | Version | Purpose |
|-----------|---------|---------|
| Java | 25 | Compiler source/target |
| maven-compiler-plugin | 3.13.0 | Modern Java 25 support |
| maven-surefire-plugin | 3.1.0 | Java 17+ test execution |
| maven-failsafe-plugin | 3.1.0 | Integration test support |
| maven-war-plugin | 3.4.0 | Web app packaging |
| maven-jar-plugin | 3.3.0 | JAR packaging |
| JUnit | 4.13.2 | Test framework |

## Example: Creating a New Web App Project

1. Create the basic structure:
   ```bash
   mkdir -p MyNewApp/src/{main/webapp,main/java,test/java}/com/example
   cd MyNewApp
   ```

2. Create `pom.xml`:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <project xmlns="http://maven.apache.org/POM/4.0.0"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
                                http://maven.apache.org/xsd/maven-4.0.0.xsd">
     <modelVersion>4.0.0</modelVersion>

     <parent>
       <groupId>com.csd430</groupId>
       <artifactId>csd430-parent</artifactId>
       <version>1.0</version>
       <relativePath>../pom.xml</relativePath>
     </parent>

     <artifactId>my-new-app</artifactId>
     <packaging>war</packaging>
     <name>My New Application</name>
     <description>A new web application</description>

     <dependencies>
       <dependency>
         <groupId>junit</groupId>
         <artifactId>junit</artifactId>
         <scope>test</scope>
       </dependency>
     </dependencies>
   </project>
   ```

3. Build it:
   ```bash
   mvn clean package
   ```

   ✅ Automatically uses Java 25!

## Current Projects Using Parent POM

- ✅ `Module-1/assignment1_3` — Now inherits from parent

## Updating the Parent

If you ever need to change the default Java version or plugin versions for all projects, just edit `/Users/Bob/csd/CSD-430/pom.xml`.

Example: To upgrade to a future Java version 26, just change:
```xml
<maven.compiler.source>26</maven.compiler.source>
<maven.compiler.target>26</maven.compiler.target>
```

All child projects will automatically use Java 26 next time they build.

---

**Summary**: Any Maven project that includes the parent POM reference will now automatically use Java 25 without needing to explicitly set compiler properties! 🎉
