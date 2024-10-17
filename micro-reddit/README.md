# Micro-Reddit

This project is part of The Odin Project's Ruby on Rails curriculum, focusing on building a simple Reddit-like application. It demonstrates how to work with models, associations, and validations in Rails, allowing users to create posts and comments.

> [!NOTE]  
> You can find the description of the assignment by [link](https://www.theodinproject.com/lessons/ruby-on-rails-blog-app)



## Features

- Creation of `User`, `Post`, and `Comment` models.
- ActiveRecord associations between users, posts, and comments:
  - A user can create many posts and comments.
  - A post belongs to a user and can have many comments.
  - A comment belongs to a user and a post.
- Validation on models to ensure presence and correctness of data (e.g., username, post title, and comment content).
- Console-based interaction for creating and managing posts and comments.

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
   cd micro-reddit
   ```

2. Install the required gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:migrate
   ```

4. Start the Rails console to interact with the application:

   ```bash
   rails console
   ```

### Usage

- In the Rails console, you can create users, posts, and comments using ActiveRecord methods, for example:
  
  ```ruby
  user = User.create(username: 'example_user')
  post = user.posts.create(title: 'My First Post', body: 'This is the content of the post.')
  comment = post.comments.create(body: 'Great post!', user: user)
  ```

- Validations will ensure that all required fields are present when creating users, posts, or comments.

## Built With

- Ruby on Rails
- SQLite (default Rails database for development)

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## Resources

- [Ruby on Rails Getting Started Guide](https://www.theodinproject.com/lessons/ruby-on-rails-micro-reddit)
- [Rails Documentation](https://api.rubyonrails.org/classes/ActiveRecord/Migration.html)

## Acknowledgements

This project is part of [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails) curriculum.