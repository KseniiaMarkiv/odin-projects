User.create!(
  username: "john_doe",
  email: "john.doe@example.com",
  password: "John@123",
  password_confirmation: "John@123"
)

User.create!(
  username: "jane_smith",
  email: "jane.smith@example.com",
  password: "Jane$456",
  password_confirmation: "Jane$456"
)

User.create!(
  username: "alice_jones",
  email: "alice.jones@example.com",
  password: "Alice#789",
  password_confirmation: "Alice#789"
)
