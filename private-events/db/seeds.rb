# db/seeds.rb

# Check if the database adapter is PostgreSQL
if ActiveRecord::Base.connection.adapter_name.downcase == 'postgresql'
  # Clear all users and reset the primary key sequence
  User.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!('users')  # For PostgreSQL

  puts "PostgreSQL database detected: Cleared all users and reset primary key sequence."
else
  puts "Non-PostgreSQL database detected: Skipping user clearance and primary key reset."
end

# Sample users data
users_data = [
  { email: "john.doe@example.com", username: "johndoe", password: "password123@B" },
  { email: "jane.smith@example.com", username: "janesmith", password: "password123@B" },
  { email: "alice.wonderland@example.com", username: "alicew", password: "password123@B" },
  { email: "bob.builder@example.com", username: "bobbuilder", password: "password123@B" },
  { email: "charlie.brown@example.com", username: "charlieb", password: "password123@B" },
  { email: "daisy.duck@example.com", username: "daisyduck", password: "password123@B" }
]

# Create each user
users_data.each do |user_data|
  User.create!(user_data)
end

puts "Created #{User.count} users."
