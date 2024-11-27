# Project: Private Events

This Ruby on Rails application is designed for creating and managing private events. It allows users to sign up, log in, and create events. The app is built with modern tools such as Semantic UI for styling and PostgreSQL as the database. It also integrates Devise for authentication and supports responsive, SPA-like interactions using Turbo and Stimulus.

## Technologies Used

- **Ruby**: 3.2.2
- **Rails**: 7.1.4.2
- **Database**: PostgreSQL (configured with the pg gem)
- **Styling**: Semantic UI (via semantic-ui-sass) is used for clean and responsive page designs
- **Authentication**: Devise
- **JavaScript**: Turbo Rails, Stimulus Rails, jQuery
- **Web Server**: Puma
- **Database**: PostgreSQL (configured with `pg` gem)


## System Dependencies

This project depends on several gems, including:
- **Bootsnap** for faster boot times through caching
- **Importmap Rails**, **Turbo Rails**, and **Stimulus Rails** for JavaScript and SPA-like interactions
- **Puma** as the web server
- **Sprockets Rails** for asset management
- **Web Console** for debugging in development

> [!NOTE]  
> For a full list of gem dependencies, refer to `Gemfile.lock`.

## Setup Instructions

### Step 1: Install Necessary Gems

Run `bundle install` in your terminal to install all the required gems.

### Step 2: Configure PostgreSQL Database

  1. Set up PostgreSQL with your role (`name_your_role`) and database (`name_your_db`) as per the setup in `config/database.yml` in part
      ```yml
      default: &default
        adapter: postgresql
        encoding: unicode
        # For details on connection pooling, see Rails configuration guide
        # https://guides.rubyonrails.org/configuring.html#database-pooling
        pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
        username: name_your_role # role previously added
        password: <%= ENV['DATABASE_PASSWORD'] %> # variable previously added
      ```

  2. Database Initialization

  Run the following to create, migrate, and seed the database:

  ```bash
  rails db:create
  rails db:migrate
  rails db:seed
  ```

### Step 3: Deployment

To deploy this application, consider using platforms that support Rails and PostgreSQL (such as Heroku). Follow specific deployment instructions as required for the hosting environment.

## Features

- User Authentication: Integrated Devise for user sign-up, login, and profile management.
- Event Creation: Users can create events with a title, description, date, and location.
- User Profiles: Displays user information and their associated events.
- Responsive UI: The app uses Semantic UI for clean, responsive design, including modals, dropdowns, and forms.
- Database Management: Events are stored in a PostgreSQL database with associations to users (event creators).


### Setup Process

1. **Initial Setup:**
   - Create a new Rails app with PostgreSQL as the database:
     ```bash
     rails new private-events --database=postgresql
     ```
   - Configure the `database.yml` file with the PostgreSQL credentials.

2. **Add User Authentication with Devise:**
   - Install the `Devise` gem and generate the `User` model:
   - Create custom controllers and views for user registration and authentication.

3. **Event Creation:**
   - Generate the `Event` model with title, date, and description fields:
   - Add a `location` column to the Event model:
   - Set up associations between users (event creators) and events.

4. **Styling and UI Enhancements:**
   - Integrate `Semantic UI` for consistent styling across the app:
   - Use the cycle method to display user avatars in a rotating manner in views.
   - Add a custom layout with a navigation bar and user profile pages.

5. **Bug Fixes and Improvements:**
   - Fix issues with Turbo Rails by disabling Turbo for Devise forms:
   - Implement validations for user email and password fields using Devise and custom logic.

## Future Improvements

- Implement compatibility between `Semantic UI` and `Turbo` for smooth form submissions.
- Add additional user roles and permissions, such as Admin roles for managing events.

## Contributing

> [!TIP]
> Contributions are welcome! Feel free to fork the project and submit pull requests. If you encounter issues, open an issue ticket, and I'll be happy to help.