h1. Web Penetration Attack Interface

Rails 4.2 

* "Devise":https://github.com/plataformatec/devise for user management and authentication
* "Bootstrap":http://getbootstrap.com/ or "Foundation":http://foundation.zurb.com/ front-end frameworks
* "Geolocation"


h2. What Is Implemented -- and What Is Not

The example application can be used as the basis for a website that provides a login page and user management. With knowledge of Rails, the website can be adapted and customized to your needs. Features include:

* Home page
* Navigation bar
* Sign up (create account)
* Login
* "Forgot password?" feature
* "Remember me" (stay logged in) feature
* Edit account (edit user profile)
* List of users
* Target Page
* GeoLocation Map

h4. Database

The application requires a database. The example application uses SQLite with Rails ActiveRecord. You can easily substitute PostgreSQL, MySQL, or other databases.

h4. Front-end Framework

The example application (here in the GitHub repository) integrates Bootstrap for a navigation bar and flash messages. The "rails_layout":https://github.com/RailsApps/rails_layout gem is included so you can switch to the Foundation front-end framework.

h2. Accounts You Will Need

* Admin Account can be made by z = User.find(1); z.admin = "true"; z.save

h2. On Startup!

* bundle install
* rake db:migrate

h2. Preview
![ScreenShot](http://s23.postimg.org/on12tdsjv/devise.png)