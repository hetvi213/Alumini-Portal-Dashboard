# Alumni Portal Dashboard

A Java EE alumni portal for SVKM's Usha Pravin Gandhi College of Arts, Science and Commerce. The application provides an alumni landing page, registration and login flows, an alumni community directory, membership information, and an events gallery.

## Features

- Alumni registration with profile-photo upload
- Login and session creation
- Database-backed alumni community directory
- Events gallery and membership page
- Responsive JSP/CSS interface

## Tech stack

- Java 8
- Java EE 7 (Servlets and JSP)
- Apache Ant / NetBeans project
- GlassFish application server
- MySQL
- HTML, CSS, JavaScript, Tailwind CSS (CDN), and AOS (CDN)

## Project structure

```text
src/java/              Servlet source files
src/conf/              Application manifest
web/                   JSP pages, styles, and images
nbproject/             NetBeans/Ant project configuration
build.xml              Ant build entry point
Alumni_Portal/         Legacy/alternate copy of the application
```

The root-level `src`, `web`, `nbproject`, and `build.xml` files form the primary NetBeans project.

## Prerequisites

- JDK 8
- NetBeans with Java Web support (recommended)
- GlassFish Server
- MySQL Server
- MySQL Connector/J compatible with `com.mysql.jdbc.Driver`

## Database setup

Create a MySQL database and a `register` table with the fields used by the application:

```sql
CREATE DATABASE auth;
USE auth;

CREATE TABLE register (
    firstName    VARCHAR(100) NOT NULL,
    lastName     VARCHAR(100) NOT NULL,
    email        VARCHAR(255) NOT NULL UNIQUE,
    password     VARCHAR(255) NOT NULL,
    phone        VARCHAR(30),
    graduation   VARCHAR(20),
    department   VARCHAR(100),
    linkedUrl    VARCHAR(500),
    company_name VARCHAR(255),
    designation  VARCHAR(255),
    photoPath    VARCHAR(500),
    about        TEXT
);
```

Before running the application, update the JDBC URL and credentials in these files so they all point to the same database:

- `src/java/registerServlet.java`
- `src/java/LoginServlet.java`
- `src/java/Communityservlet.java`

Also add the MySQL Connector/J JAR to the project libraries or the GlassFish domain libraries.

> Note: this project currently stores passwords as plain text. Use password hashing and externalized database credentials before deploying it beyond a local development environment.

## Configure profile uploads

Registration currently writes uploaded images to a hard-coded directory in `src/java/registerServlet.java`. Change `uploadPath` to an existing writable directory on your machine. To display uploaded photos, make that directory available to the application at `/uploads` (or adjust the generated image URL in `Communityservlet.java`).

## Run with NetBeans

1. Open this repository as a project in NetBeans.
2. Select JDK 8 and configure a GlassFish server.
3. Add MySQL Connector/J to the project libraries.
4. Complete the database and upload-directory configuration above.
5. Choose **Run Project**.
6. Open the deployed application, typically at `http://localhost:8080/Alumni_Portal/`.

## Build with Ant

After configuring the Java EE/GlassFish properties used by the NetBeans-generated build files, run:

```bash
ant clean dist
```

The deployable WAR is generated at `dist/Alumni_Portal.war`.

## Main routes

| Route | Purpose |
| --- | --- |
| `/home.jsp` | Portal home page |
| `/event.jsp` | Alumni events |
| `/membership.jsp` | Membership information |
| `/register.jsp` | Alumni registration |
| `/login.jsp` | Alumni login |
| `/Communityservlet` | Alumni community directory |

## Current development notes

- JDBC database names and passwords are inconsistent across the three servlets and must be aligned locally.
- The upload directory is machine-specific and must be configured before photo registration works.
- The repository contains a second application copy under `Alumni_Portal/`; use the root project unless you intentionally need that copy.
- No automated test suite is currently included.
