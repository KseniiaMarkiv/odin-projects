# Members Only

This project is part of The Odin Project's Ruby on Rails curriculum, focusing on building an exclusive club-like application. The goal is to create a platform where only signed-in users can see the authors of posts, while others can view the content anonymously.

> [!NOTE]  
> You can find the description of the assignment by [link](https://www.theodinproject.com/lessons/ruby-on-rails-members-only)


## Features

- User authentication: Only logged-in users can create posts and view the author of each post.
- Anonymous viewing: Guests can view the content of posts but cannot see the author's name.
- Authentication system built using Rails' `has_secure_password` and sessions.
- Flash messages for successful login, logout, and invalid actions.
- Return path handling using `request.path + params[:return_path]` to maintain the user's navigation path.
- Watch functionality for `password` and `password_confirmation` fields to ensure proper validation.
- Handled Bootstrap and Trix conflict when implementing Action Text for rich text content in posts.
- Validations to ensure that posts and user data are submitted correctly.

## Getting Started

### Prerequisites

To run this project, you'll need:

- Ruby 3.x or later
- Rails 7.x or later
- Bundler

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/KseniiaMarkiv/odin-projects.git
   cd members-only
   ```

2. Install the required gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:migrate
   ```

4. Start the Rails server:

   ```bash
   rails server
   ```

5. Open your browser and go to `http://localhost:3000` to view the app.

### Usage

- Sign up to create an account.
- Log in to create posts and view the authors of all posts.
- Guests (non-logged-in users) can still view post content but cannot see the author information.

## Built With

- Ruby on Rails
- Bootstrap
- Action Text (Trix for rich text content)
- SQLite (default Rails database for development)

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## Acknowledgements

This project is part of [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails) curriculum.
