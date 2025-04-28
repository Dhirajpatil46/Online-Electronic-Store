# Online Electronic Store

This project is an advanced Java web application using Servlets and JDBC, designed as an online electronic store platform where users and admins have different access rights and functionalities.

## Features

### Admin Login:
-   **View Product:** Admin can view a list of products, with the ability to edit or delete product details.
-   **Add Product:** Admin can add new products to the store.
-   **Logout:** Admin can log out of the system.

### User Login:
-   **View Product:** Users can view the product list and purchase items as per their desired quantity.
-   **Buy Product:** Users can purchase products, selecting the desired quantity.
-   **Logout:** Users can log out of the system.
-   **New User Registration:** Users can register themselves by providing their personal information.

## Prerequisites

To run this project, make sure you have the following installed:

-   **JDK 17 or above**: Java Development Kit for building and running the project.
-   **Oracle 19c Database**: Database to store and retrieve product and user information.
-   **ODBC 8 JDBC Driver**: Required to establish a connection between Java and Oracle database.

You can download the Oracle 19c database and JDBC driver from Oracle's official website.

Based on the image provided, here are the database table structures:

**Customer Table:**

| Name     | Nullable | Type         |
| :------- | :------- | :----------- |
| UNAME    | NOT NULL | VARCHAR2(50) |
| PWORD    |          | VARCHAR2(50) |
| FNAME    |          | VARCHAR2(100)|
| LNAME    |          | VARCHAR2(100)|
| ADDR     |          | VARCHAR2(200)|
| MID      |          | VARCHAR2(100)|
| PHNO     |          | VARCHAR2(20) |

**Product Table:**

| Name     | Nullable | Type         |
| :------- | :------- | :----------- |
| PCODE    | NOT NULL | VARCHAR2(100)|
| PNAME    |          | VARCHAR2(50) |
| PCOMPANY |          | VARCHAR2(100)|
| PPRICE   |          | VARCHAR2(20) |
| PQTY     |          | VARCHAR2(20) |

**Admin Table:**

| Name      | Nullable | Type         |
| :-------- | :------- | :----------- |
| AUSERNAME | NOT NULL | VARCHAR2(50) |
| APASSWORD | NOT NULL | VARCHAR2(50) |
| AFNAME    |          | VARCHAR2(50) |
| ALNAME    |          | VARCHAR2(50) |
| AADDRESS  |          | VARCHAR2(100)|
| AMAILID   |          | VARCHAR2(100)|
| APHONENO  |          | VARCHAR2(15) |

## Installation

1.  Clone the project from GitHub:
    ```bash
    git clone [https://github.com/your-username/online-electronic-store.git](https://github.com/your-username/online-electronic-store.git)
    ```
2.  Set up the **Oracle 19c** database and ensure that the JDBC connection is properly configured in your project.
3.  Include the **ODBC 8 JDBC driver** in your project’s build path.
4.  Deploy the project in your preferred servlet container (such as Apache Tomcat).
5.  Access the application by navigating to the appropriate URL (typically `http://localhost:8080/`).

## Running the Project

1.  Start your servlet container (e.g., Apache Tomcat).
2.  Navigate to the project's URL in your web browser.
3.  Log in as an **Admin** or **User** to use the features.

## Project Structure

-   **Servlets**: Contains the main logic for handling user requests.
-   **JDBC**: Contains the database connection logic to interact with Oracle 19c.
-   **Web Pages**: Contains the HTML, CSS, and JSP files for the user interface.
