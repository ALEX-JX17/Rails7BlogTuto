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
* Slim
* Simple form




-------------- Notes ---------------
* Bootstrap. To install Bootstrap on Rails 7, firts I used "cssbundling-rails" gem, but I had many conflicts with Turbo stream And I tryed to solve it as many ways but i couldn't so finally instaled Bootstrap using  'bootstrap' gem and Turbo stream worked well.

    Instructions for some cases:
    - Open the file app/assets/stylesheets/applications.css. First of all, rename the file to application.scss and then replace its content by:
            
            @import "bootstrap";

    - To install the JavaScript parts, go back to your terminal and run:

            ./bin/importmap pin bootstrap
    
        This pins (installs) the JavaScript packages “bootstrap” and “@popperjs/core” to your project. To use them in our app, we need to import them into our application.js JavaScript file. So open the file app/javascript/application.js  (Attention: Not the file app/javascript/controllers/application.js )and append the following two lines at the end:

            import "@popperjs/core"
            import "bootstrap"

        Now all the Bootstrap JavaScript stuff should be working. 

        And that's all

        Reference: https://nobrainerprogramming.com/rails-7-modal-forms-with-hotwire-and-bootstrap/

* Slim. After add gem "slim-rails" to the Gemfile I needed to convert all .erb file to .slim and to do that
all I done was to use html2slim gem, the steps are:

    $ gem install html2slim
    $ erb2slim app/ -d

    And that's all

* Action Text. To add Action Text Overview to the proyect in rails 7 just need to follow the default instructions from Rails Guide: https://edgeguides.rubyonrails.org/action_text_overview.html

    To install run:
    
        bin/rails action_text:install

After installed it I have a problem with the final style, to solve it are several options. The most simple is to move 

        @import "actiontext.css";

At the bigining of app/assets/stylesheets/application.scss and after that all the style was working well. But I feel is not a well solution so I found other alternatives, one option is add actiontext direct in the aplication layout, app/views/layouts/application.html.slim

    = stylesheet_link_tag "actiontext", "data-turbo-track": "reload"

And adding in app/assets/config/manifest.js this line:

    //= link actiontext.css

Some one else was able to resolve it by simply running the build commands defined in package.json

    yarn build
    yarn build:css

The last solution I found was to prepare the new added css and javascript runing:

    rails css:build 
    rails javascript:build

just to be safe. 
Reference: https://github.com/rails/rails/issues/43441

I got an error printing the saved rich text on the show. When I wanted to print the edited text in a view using slim it didn't work, because it printed the HMTL code instead the procesed code text.
        
        #Did not work
        = @article.content

but it was easy to solve, just adding a double "="

        == @article.content

That printed the procesed HTML and solved my problem, I feel it isn't an elegant solution but works to me.