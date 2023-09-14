
# # # Seed data for jobseekers
# # User.create(email: "jobseeker1@example.com", name: "John Doe", username: "john_doe", password: "password", role: "jobseeker")
# # User.create(email: "jobseeker2@example.com", name: "Jane Smith", username: "jane_smith", password: "password", role: "jobseeker")
# # User.create(email: "jobseeker3@example.com", name: "Michael Johnson", username: "michael_j", password: "password", role: "jobseeker")

# # # Seed data for employers
# # User.create(email: "employer1@example.com", name: "Apple", username: "Apple", password: "password", role: "employer")
# # User.create(email: "employer2@example.com", name: "Microsoft", username: "Microsoft", password: "password", role: "employer")
# # User.create(email: "employer3@example.com", name: "Facebook", username: "Facebook", password: "password", role: "employer")

# # # Mix of jobseekers and employers
# # User.create(email: "user1@example.com", name: "Alex Williams", username: "alex_w", password: "password", role: "jobseeker")
# # User.create(email: "user2@example.com", name: "Tesla", username: "Tesla", password: "password", role: "employer")
# # User.create(email: "user3@example.com", name: "Sara Johnson", username: "sara_j", password: "password", role: "jobseeker")
# # User.create(email: "user4@example.com", name: "Amazon", username: "Amazon", password: "password", role: "employer")


# # # db/seeds.rb

# # # Clear existing data before seeding (optional)
# # User.destroy_all

# # # Seed data
# # User.create!(
# #   email: 'user1@example.com',
# #   name: 'User One',
# #   username: 'user1',
# #   password: 'password',
# #   role: 'employer'
# # )

# # User.create!(
# #   email: 'user2@example.com',
# #   name: 'User Two',
# #   username: 'user2',
# #   password: 'password',
# #   role: 'jobseeker'
# # )

# # # You can add more user records as needed

# # puts 'Seed data for users table created.'



# user1 = User.create!(
#   email: 'user22@example.com',
#   name: 'User One',
#   username: 'user1',
#   password: 'password',
#   role: 'employer'
# )

# user2 = User.create!(
#   email: 'user23@example.com',
#   name: 'User Two',
#   username: 'user2',
#   password: 'password',
#   role: 'employer'
# )

# # # You can add more user records as needed

# # puts 'Seed data for users table created.'
# employer1 = Employer.create(
#   user_id: user2.id,
#   name: 'ABC Company',
#   size: 100,
#   logo: 'logo1.png',
#   website: 'www.abccompany.com',
#   email: 'employer1@example.com',
#   phone: '12345678'
# )



# job1 = Job.create(
#   employer_id: employer1.id,
#   job_title: 'Software Engineer',
#   job_description: 'We are looking for a skilled Software Engineer...',
#   job_location: 'New York, NY',
#   job_category: 'Engineering',
#   job_level: 'Mid-level',
#   job_skills: 'Ruby on Rails, React, PostgreSQL',
#   job_qualifications: 'Bachelor\'s degree in Computer Science...',
#   salary_highest: 90000,
#   salary_lowest: 70000,
#   application_deadline: Time.now + 1.month
# )

# job2 = Job.create(
#   employer_id: employer1.id,
#   job_title: 'Web Developer',
#   job_description: 'We are hiring a Web Developer with experience in...',
#   job_location: 'San Francisco, CA',
#   job_category: 'Web Development',
#   job_level: 'Junior',
#   job_skills: 'HTML, CSS, JavaScript',
#   job_qualifications: 'Some experience with front-end development...',
#   salary_highest: 80000,
#   salary_lowest: 60000,
#   application_deadline: Time.now + 1.month
# )



# # # db/seeds.rb

# # # Clear existing data before seeding (optional)
# # User.destroy_all

# # # Seed data
# # User.create!(
# #   email: 'user1@example.com',
# #   name: 'User One',
# #   username: 'user1',
# #   password: 'password',
# #   role: 'employer'
# # )

# # User.create!(
# #   email: 'user2@example.com',
# #   name: 'User Two',
# #   username: 'user2',
# #   password: 'password',
# #   role: 'jobseeker'
# # )

# # # You can add more user records as needed

# # puts 'Seed data for users table created.'



# # # db/seeds.rb

# # # Clear existing data before seeding (optional)
# # User.destroy_all

# # Seed data
# # user1 = User.create!(
# #   email: 'user6@example.com',
# #   name: 'User One',
# #   username: 'user1',
# #   password: 'password',
# #   role: 'employer'
# # )

# # user2 = User.create!(
# #   email: 'user7@example.com',
# #   name: 'User Two',
# #   username: 'user2',
# #   password: 'password',
# #   role: 'employer'
# # )

# # # # You can add more user records as needed

# # # puts 'Seed data for users table created.'
# # employer1 = Employer.create(
# #   user_id: user2.id,
# #   name: 'ABC Company',
# #   size: 100,
# #   logo: 'logo1.png',
# #   website: 'www.abccompany.com',
# #   email: 'employer1@example.com',
# #   phone: '12345678'
# # )



# # job1 = Job.create(
# #   employer_id: employer1.id,
# #   job_title: 'Software Engineer',
# #   job_description: 'We are looking for a skilled Software Engineer...',
# #   job_location: 'New York, NY',
# #   job_category: 'Engineering',
# #   job_level: 'Mid-level',
# #   job_skills: 'Ruby on Rails, React, PostgreSQL',
# #   job_qualifications: 'Bachelor\'s degree in Computer Science...',
# #   salary_highest: 90000,
# #   salary_lowest: 70000,
# #   application_deadline: Time.now + 1.month
# # )

# # job2 = Job.create(
# #   employer_id: employer1.id,
# #   job_title: 'Web Developer',
# #   job_description: 'We are hiring a Web Developer with experience in...',
# #   job_location: 'San Francisco, CA',
# #   job_category: 'Web Development',
# #   job_level: 'Junior',
# #   job_skills: 'HTML, CSS, JavaScript',
# #   job_qualifications: 'Some experience with front-end development...',
# #   salary_highest: 80000,
# #   salary_lowest: 60000,
# #   application_deadline: Time.now + 1.month
# # )


# # # Seed data for jobseekers
# # User.create(email: "jobseeker1@example.com", name: "John Doe", username: "john_doe", password: "password", role: "jobseeker")
# # User.create(email: "jobseeker2@example.com", name: "Jane Smith", username: "jane_smith", password: "password", role: "jobseeker")
# # User.create(email: "jobseeker3@example.com", name: "Michael Johnson", username: "michael_j", password: "password", role: "jobseeker")

# # # Seed data for employers
# # User.create(email: "employer1@example.com", name: "Apple", username: "Apple", password: "password", role: "employer")
# # User.create(email: "employer2@example.com", name: "Microsoft", username: "Microsoft", password: "password", role: "employer")
# # User.create(email: "employer3@example.com", name: "Facebook", username: "Facebook", password: "password", role: "employer")

# # # Mix of jobseekers and employers
# # User.create(email: "user1@example.com", name: "Alex Williams", username: "alex_w", password: "password", role: "jobseeker")
# # User.create(email: "user2@example.com", name: "Tesla", username: "Tesla", password: "password", role: "employer")
# # User.create(email: "user3@example.com", name: "Sara Johnson", username: "sara_j", password: "password", role: "jobseeker")
# # User.create(email: "user4@example.com", name: "Amazon", username: "Amazon", password: "password", role: "employer")


# # # db/seeds.rb

# # # Clear existing data before seeding (optional)
# # User.destroy_all

# # # Seed data
# # User.create!(
# #   email: 'user1@example.com',
# #   name: 'User One',
# #   username: 'user1',
# #   password: 'password',
# #   role: 'employer'
# # )

# # User.create!(
# #   email: 'user2@example.com',
# #   name: 'User Two',
# #   username: 'user2',
# #   password: 'password',
# #   role: 'jobseeker'
# # )

# # # You can add more user records as needed

# # puts 'Seed data for users table created.'


