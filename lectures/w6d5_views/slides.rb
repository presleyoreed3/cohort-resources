# W6D5
# Rails Views
---
## Lecture Format
* Looong code demo
  * We're going to code out views for each of our controller actions.
  * Take lots of notes!
  * There will be a lot of refactoring!
---
## Learning Objectives
1. Explain what the views are responsible for in the MVC framework
2. Why do we need hidden input types?
3. Given a show controller action for chirps, how would you render the author's name and email?
---
## Quick Recap
* Controllers / Server
* RESTful routes
  * A conventional mapping between HTTP verb + path and an action/response  
---
![restful-routes](https://raw.githubusercontent.com/appacademy/worldwide-lecture-notes/master/rails/w6d5-rails-views/assets/RESTful_routes.jpeg?token=ALXC6V3FQKWKMLGAMNQXP63A2XXRE)
---
## View
* The client-facing portion of Rails
* Comprises the multiple types of responses from the controller
  * e.g. webpage vs web service
* Web Page or `Template` Composition
  * HTML
  * CSS
  * JavaScript
---
![Rails](https://raw.githubusercontent.com/appacademy/worldwide-lecture-notes/master/rails/w6d5-rails-views/assets/rails_diagram.png?token=ALXC6VZMO4SIHBNFK4MVKMDA2XXWA)
---
## Controller Rendering
* Rendering
  * Views - JSON, HTML
  * Syntax: `render <template>`
  * Example: `render :show`
    * Rails knows to look here: `/app/views/chirps/show.html.erb`
    * Based on controller name
Note:
* Before we were rendering :json and now we are rendering a template
* Explain that rails knows where to find this template by a convention.
---
## When Rendering Views
* Renders the specified template within `application.html.erb`
  * Specifically at `yield`
```ruby
render :edit
render template: "chirps/edit"
render template: "chirps/edit.html.erb"
```
---
## Embedded Ruby (ERB)
* HTML templates augmented with Ruby Code
  * `<% Ruby code here %>` - execute Ruby code without a return value 
  * `<%= Ruby code here %>` - executes Ruby code with a return value to be embedded into the template
* File name example: `show.html.erb`
---
## Things to remember about ERB code
* ERB code is **NOT** visible to the client / browser
* Don't try to run `puts` or `print`
* Comment out by also inserting a # immediately after first %
---
## Debugging
* Good ol' byebug
  * Keep in mind, you don't have to require gems manually anymore, just bundle install
* Stack trace
* `binding_of_caller` and `better_errors` gem
---
## Blue Bird Demo - First ERB and Partial!
---
## The `new` and `edit` routes
* HTML/ERB template to create or update an instance of data
* They simply render templates that contain forms!
* All they do is render a form!
---
## Form Anatomy!
1. action (aka path/rails helper)
2. HTTP method (ex: POST)
3. inputs with labels (optional)
4. submit button
Note:
* Stress importance that `new` and `edit` are `get` requests to get the form itself. With those forms we can then gather and `post` data.
* It will send a request with the corresponding action and method as well as the inputs in the body of the request
* Our router and then controller will then decide how to respond
---
## Controller Redirecting
* Redirecting
  * Ends current request / response cycle and initializes a second
  * Syntax: `redirect_to <Rails URL Helper>`
  * Example: `redirect_to user_url(@user)`
  * Use the prefixes provided to you by `rails routes`
---
## Blue Bird Demo - New and Edit Forms
---
## Review Time!
---
## Partials
* Primary method of refactoring / DRYing up HTML code
* Example File: `_form.html.erb`
* Syntax: `render <Partial Filename>, options_hash`
  * Omit the `_` character when inserting the partial's filename
  * Options hash can contain data to be passed into partial
* Example: `<%= render 'user', user: @user %>`
* Rails will automagically look for a file of the specified name in the folder under `Views` that matches the corresponding model name
---
## Some things to remember!
* returning ERB tags vs. non-returning
* instance variables are needed to supply data to your views
* no instance variables in partials!
* hidden inputs are great for passing along information to params that doesn't need to be specified by the user.
---
## [Kahoot!](https://play.kahoot.it/v2/?quizId=a57d345d-f4a4-4c24-bfc0-ed9ebaea1b4f)
---
## Go forth and make full web apps with Rails!
---
