# db/seeds.rb

#! This is the very last option for delete DB.
# # Destroy existing records
# User.destroy_all
# Post.destroy_all

# # Reset primary keys
# ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='users'")
# ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='posts'")

# Users
users = User.create!([
  { username: "john_doe", email: "john.doe@example.com", password: "John@123", password_confirmation: "John@123" },
  { username: "jane_smith", email: "jane.smith@example.com", password: "Jane$456", password_confirmation: "Jane$456" },
  { username: "alice_jones", email: "alice.jones@example.com", password: "Alice#789", password_confirmation: "Alice#789" },
  { username: "sarah_white", email: "sarah.white@example.com", password: "Secure!789", password_confirmation: "Secure!789" },
  { username: "david_black", email: "david.black@example.com", password: "AnotherPass@2024", password_confirmation: "AnotherPass@2024" }
])

# Posts
posts = Post.create!([
  { title: "First Post", body: "This is John's first post", user: users[0] },
  { title: "Navigating the Rocky Road of Ruby on Rails", body: "Hello Rails Community,\n\nI wanted to share my recent experiences as a newcomer to Ruby on Rails. It's been quite the adventure, filled with both small victories and numerous challenges. Here are a few errors that have been particularly frustrating:\n\n- Body can't be blank: This error keeps popping up, no matter how many times I think I've filled out the form correctly. It's a constant reminder that my posts need some substance.\n- Title is too long (maximum is 220 characters): I tend to get carried away with my titles, trying to be as descriptive as possible. Turns out, there's such a thing as being too descriptive!\n- Body is too short (minimum is 10 characters): On the flip side, when I try to keep things brief, I get hit with this error. Finding the right balance between too much and too little is proving to be quite the challenge.\n\nDespite these hurdles, I'm committed to learning and improving. Each error is a stepping stone towards becoming a better developer. To all the fellow newbies out there, don't get discouraged! Every mistake is an opportunity to learn and grow.\n\nIf anyone has advice on how to tackle these specific errors, I'd love to hear it. Let's support each other and make this journey a bit easier for everyone.\n\nHappy coding!", user: users[1] },
  { title: "Alice's Adventures", body: "Alice writing about her day", user: users[2] },
  { title: "Embracing the Joys of Everyday Life", body: "Hello everyone,\n\nI wanted to take a moment to share how I find happiness in my daily life. It's not always easy, but I've discovered a few habits and mindsets that help me stay positive and grateful. Here are some of the ways I embrace the joys of everyday living:\n\n- Practicing Gratitude: Every day, I take a few minutes to reflect on the things I'm grateful for. It could be something as simple as a beautiful sunrise, a kind word from a friend, or a delicious meal. This practice helps me focus on the positive aspects of my life and appreciate the little things.\n- Staying Active: Regular exercise has been a game-changer for my mood and energy levels. Whether it's a brisk walk, a yoga session, or a dance class, moving my body helps me feel more alive and connected to the world around me.\n- Connecting with Loved Ones: Spending time with family and friends is one of the greatest sources of joy in my life. Whether it's a phone call, a video chat, or an in-person visit, these connections remind me that I'm not alone and that I have a support system.\n- Pursuing Passions: Engaging in activities that I love, like reading, cooking, or working on a creative project, brings me immense satisfaction. These hobbies allow me to express myself and find fulfillment outside of my daily responsibilities.\n- Mindfulness and Meditation: Taking a few moments each day to meditate or practice mindfulness helps me stay grounded and present. It reduces stress and allows me to approach life with a calm and centered mindset.\n- Helping Others: Acts of kindness, whether big or small, bring a sense of purpose and happiness. Volunteering, helping a neighbor, or simply offering a smile can make a significant difference in my day and the lives of others.\n\nLiving a happy life is about finding balance and making choices that align with my values and passions. It's not always perfect, but by focusing on these positive habits, I can navigate life's ups and downs with a smile.\n\nHow do you find happiness in your daily life? I'd love to hear your tips and experiences!", user: users[0] },
  { title: "David's Journal", body: "David sharing his experiences", user: users[4] },
  { title: "Basic setup", body: "Think about and spec out how to set up your data models for this application. You'll need users with the usual identification attributes like name, email and password. They'll need to create posts as well.\nCreate your new members-only Rails app and GitHub repo. Update your README.\nAdd devise to your Gemfile and install it in your app using set up instructions on the Devise README.", user: users[0]}
])

