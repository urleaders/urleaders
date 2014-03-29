# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account

u = User.new(
    username: "admin",
    email: "admin@urleaders.com",
    password: "url1024",
    password_confirmation: "url1024",
    admin: true
)
u.skip_confirmation!
u.save!

