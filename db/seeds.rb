

# Seed data for jobseekers
User.create(email: "jobseeker1@example.com", name: "John Doe", username: "john_doe", password: "password", role: "jobseeker")
User.create(email: "jobseeker2@example.com", name: "Jane Smith", username: "jane_smith", password: "password", role: "jobseeker")
User.create(email: "jobseeker3@example.com", name: "Michael Johnson", username: "michael_j", password: "password", role: "jobseeker")

# Seed data for employers
User.create(email: "employer1@example.com", name: "Apple", username: "Apple", password: "password", role: "employer")
User.create(email: "employer2@example.com", name: "Microsoft", username: "Microsoft", password: "password", role: "employer")
User.create(email: "employer3@example.com", name: "Facebook", username: "Facebook", password: "password", role: "employer")

# Mix of jobseekers and employers
User.create(email: "user1@example.com", name: "Alex Williams", username: "alex_w", password: "password", role: "jobseeker")
User.create(email: "user2@example.com", name: "Tesla", username: "Tesla", password: "password", role: "employer")
User.create(email: "user3@example.com", name: "Sara Johnson", username: "sara_j", password: "password", role: "jobseeker")
User.create(email: "user4@example.com", name: "Amazon", username: "Amazon", password: "password", role: "employer")




puts 'Seed data for users table created.'

