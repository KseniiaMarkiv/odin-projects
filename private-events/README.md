# Project: Private Events

This Ruby on Rails application is built with:

- **Ruby version**: 3.2.2
- **Rails version**: 7.1.4.2
- **Styling**: Semantic UI is used for clean and responsive page designs
- **Database**: PostgreSQL (configured with `pg` gem)

## System Dependencies

This project depends on several gems, including:
- **Bootsnap** for faster boot times through caching
- **Importmap Rails**, **Turbo Rails**, and **Stimulus Rails** for JavaScript and SPA-like interactions
- **Puma** as the web server
- **Sprockets Rails** for asset management
- **Capybara** and **Selenium Webdriver** for testing and browser automation
- **Web Console** for debugging in development

For a full list of gem dependencies, refer to `Gemfile.lock`.

## Configuration

1. Install necessary gems: `bundle install`
2. Set up PostgreSQL with your role (`name_your_role`) and database (`name_your_db`) as per the setup in `config/database.yml` in part
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

## Database Initialization

Run the following to create, migrate, and seed the database:

```bash
rails db:create
rails db:migrate
rails db:seed
```

## Deployment

To deploy this application, consider using platforms that support Rails and PostgreSQL (such as Heroku). Follow specific deployment instructions as required for the hosting environment.