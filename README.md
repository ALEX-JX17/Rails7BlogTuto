# README
This is the Blog Tutorial of Rails 7

This proyect has been done to test the basic caracteristics of Rails 7 describeb in the rails tutorial. 
This proyect is a test proyect to test some other Rails features that I want to try or I have found in my way.


Things covered:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite     (NO YET)
* Services (job queues, cache servers, search engines, etc.)    (NO YET)
* Deployment instructions   (NO YET)

Other Features implemented:
* CSS framework: bootstrap 
* SASS
* Slim
* Simple form




-------------- Notes ---------------
* To install Bootstrap on Rails 7, firts I used "cssbundling-rails" gem, but I had many conflicts with Turbo stream And I tryed to solve it as many ways but i couldn't so finally instaled Bootstrap using  'bootstrap' gem and Turbo stream worked well.

Instructions for some cases:
    - Open the file app/assets/stylesheets/applications.css. First of all, rename the file to application.scss and then replace its content by:

        @import "bootstrap";

    - To install the JavaScript parts, go back to your terminal and run:

            ./bin/importmap pin bootstrap
    
        This pins (installs) the JavaScript packages “bootstrap” and “@popperjs/core” to your project. To use them in our app, we need to import the into our application.js JavaScript file. So open the file app/assets/javascript/application.js  (Attention: Not the file app/assets/javascript/controllers/application.js )and append the following two lines at the end:

            import "@popperjs/core"
            import "bootstrap"

        Now all the Bootstrap JavaScript stuff should be working. We will see that later when showing the modal dialog.

        And that's all

Reference: https://nobrainerprogramming.com/rails-7-modal-forms-with-hotwire-and-bootstrap/