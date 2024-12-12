# Paolo Hipol Prepose Library API

This project is a RESTful API for a library management system built using the Slim PHP framework. The API supports user authentication via JWT and provides endpoints to manage users, books, and authors.

## Features
- User authentication with JSON Web Tokens (JWT).
- Endpoints for user signup and login.
- CRUD operations for books and authors.
- Token validation and refresh mechanism.

## Requirements
- PHP 7.4 or later
- Composer
- MySQL

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/paolohs-library-api.git
   cd paolohs-library-api
   ```

2. Install dependencies using Composer:
   ```bash
   composer install
   ```

3. Create a MySQL database:
   ```sql
   CREATE DATABASE paolohs_library;
   ```

4. Import the database schema (adjust the file path if needed):
   ```bash
   mysql -u root -p paolohs_library < path/to/schema.sql
   ```

5. Configure database connection settings in the script:
   ```php
   $servername = "localhost";
   $dbusername = "root";
   $dbpassword = "";
   $dbname = "paolohs_library";
   ```

6. Run the application:
   ```bash
   php -S localhost:8080 -t public
   ```

## Endpoints

### User Authentication
- **POST /signup**: Create a new user account.
  - Request body:
    ```json
    {
      "username": "example_user",
      "password": "example_password"
    }
    ```
  - Response:
    ```json
    { "status": "Signup success, proceed to login" }
    ```

- **POST /login**: Authenticate a user and return a JWT token.
  - Request body:
    ```json
    {
      "username": "example_user",
      "password": "example_password"
    }
    ```
  - Response:
    ```json
    { "status": "Login Success", "Here's your token": "<JWT_TOKEN>" }
    ```

### Book Management
- **POST /add**: Add a new book and author.
  - Requires an Authorization header with a Bearer token.
  - Request body:
    ```json
    {
      "book": "Book Title",
      "author": "Author Name"
    }
    ```
  - Response:
    ```json
    { "status": "Book added", "Here's your token": "<JWT_TOKEN>" }
    ```

- **GET /get**: Retrieve all books and authors.
  - Requires an Authorization header with a Bearer token.
  - Response:
    ```json
    {
      "status": "success",
      "data": [
        { "book_id": 1, "title": "Book Title", "author_name": "Author Name" }
      ],
      "Here's your token": "<JWT_TOKEN>"
    }
    ```

- **PUT /update/{id}**: Update a book and author by book ID.
  - Requires an Authorization header with a Bearer token.
  - Request body:
    ```json
    {
      "book": "Updated Book Title",
      "author": "Updated Author Name"
    }
    ```

- **DELETE /delete/{id}**: Delete a book and its author by book ID.
  - Requires an Authorization header with a Bearer token.
  
# HMU:Paolo Hipol Prepose (fb)

