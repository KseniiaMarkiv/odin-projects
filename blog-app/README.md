# Rails Project: Getting Started

> [!NOTE]  
> You can find the description of the assignment by [link](https://www.theodinproject.com/lessons/ruby-on-rails-blog-app)


## Introduction

This project follows the **Ruby on Rails Guides: Getting Started** tutorial up to section 9.2. It aims to provide hands-on experience building a real Rails application. The project introduces you to the basics of Rails, including the Model-View-Controller (MVC) architecture and commonly used commands and generators.

Although this is a beginner-friendly project, there are many elements that may seem confusing at first. Don't worry if you don't fully understand all the steps or the code. The goal is to familiarize yourself with the Rails development process, learn the structure of Rails apps, and develop resilience while solving problems.

By the end of this project, you'll have a better grasp of how Rails works, including:

- Using Rails generators.
- Building Models, Views, and Controllers.
- Managing data with Rails' ActiveRecord.
- Debugging errors and reading error messages.
- The basics of routing and migrations.

## Assignment Overview

The assignment focuses on the **Ruby on Rails Getting Started** guide (<https://guides.rubyonrails.org/getting_started.html>) up to section 9.2.

### Key Objectives:

- Build a blog application using Rails.
- Learn how to define Models, Views, and Controllers.
- Understand Rails routing and ActiveRecord for database management.
- Practice using Rails generators for creating MVC components.
- Gain familiarity with error messages and debugging.
  
### Steps:

1. **Follow the Rails Getting Started Guide**  
   Complete up to section 9.2, where the MVC architecture is fully tied together. Learn common Rails commands and generators as you build.

2. **Version Check**  
   Ensure you have Rails and its dependencies installed. You can verify with the following commands:
   ```bash
   rails --version
   ruby --version
   ```

3. **Git Version Control**  
   Commit changes regularly to Git as you complete each section of the guide. This allows you to revert to earlier commits if issues arise.

4. **Error Handling**  
   Pay attention to any error messages during the development process. These errors will become more familiar as you work on future Rails projects.

5. **Commands and Generators**  
   Make mental notes of the Rails commands and generators you use throughout the project. They simplify the creation of models, controllers, and views.

6. **Complete and Push to GitHub**  
   Once you've completed the assignment, push your code to GitHub for version tracking and sharing.

## Prerequisites

Before starting this project, make sure you have the following installed:

- **Ruby** (version 2.7.0 or newer)
- **Rails** (version 6 or newer)
- **SQLite3** (for the database)
- A code editor like **VSCode** or **Sublime Text**
- **Git** for version control

## How to Run the Application

1. Clone this repository:
   ```bash
   git clone https://github.com/KseniiaMarkiv/odin-projects.git
   cd blog-app
   ```

2. Install the required gems:
   ```bash
   bundle install
   ```

3. Run the database migrations:
   ```bash
   rails db:migrate
   ```

4. Start the Rails server:
   ```bash
   rails server
   ```

5. Visit the application in your browser at `http://localhost:3000`.

## Useful Commands

- `rails generate model ModelName` – Generates a new model.
- `rails generate controller ControllerName` – Generates a new controller.
- `rails db:migrate` – Runs pending migrations.
- `rails routes` – Lists all defined routes in the application.
- `rails server` – Starts the local development server.

## Resources

- [Ruby on Rails Getting Started Guide](https://guides.rubyonrails.org/getting_started.html)
- [Rails Documentation](https://guides.rubyonrails.org/)

## Acknowledgements

This project is part of [The Odin Project](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails) curriculum.

## License

This project is open-source and free to use under the [MIT License](LICENSE).
```

You can adjust the `<repository_url>` and `<repository_name>` placeholders to reflect your actual repository information. Let me know if you need any further changes!
