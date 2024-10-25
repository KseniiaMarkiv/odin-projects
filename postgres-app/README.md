# Postgres-app

A Ruby on Rails application built with a PostgreSQL database, following The Odin Project's guide on "Installing PostgreSQL" and it was added by my own curriculum. This project demonstrates configuring Rails with PostgreSQL, setting up environment variables, and verifying the database connection.

## Getting Started

### Prerequisites

- **Ensure PostgreSQL is installed and running on your system**

  If you encounter the error `'psql' is not recognized as an internal or external command, operable program or batch file,` follow by [link](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/psql_error.md)

- **Set up a PostgreSQL role (user) with a password**
  
  steps in [link](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/create_role.md)

### Setup

1. **Create the Rails App with PostgreSQL:**
   ```bash
   rails new postgres-app --database=postgresql
   ```

2. **Configure the Database:**
   - Navigate to the project directory:
     ```bash
     cd postgres-app
     ```
   - Open `config/database.yml` and update it with your PostgreSQL credentials:

     ```yaml
     default: &default
       adapter: postgresql
       encoding: unicode
       pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
       username: kseny # replace with your PostgreSQL role
       password: <%= ENV['DATABASE_PASSWORD'] %> # environment variable for security
     ```

3. **Set Up Environment Variables:**
   - Add `DATABASE_PASSWORD` to your environment variables with the password of your PostgreSQL role.

4. **Create and Migrate the Database:**
   ```bash
   rails db:create
   rails db:migrate
   ```

5. **Run the Server:**
   ```bash
   rails server
   ```

6. **Verify the Setup:**
   - Open a browser and navigate to `http://localhost:3000` to confirm the Rails app is running with PostgreSQL.

### Additional Notes

This app is primarily for practicing PostgreSQL integration and Rails configurations as guided by The Odin Project.

---

This project is part of the [Odin Project Curriculum](https://www.theodinproject.com/lessons/ruby-on-rails-installing-postgresql).
