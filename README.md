# Bussin-Breweries
Phase 5 Project


Bussin Breweries

A user will be able to Log in and Out and Full CRUD on user’s profile. With JWT Auth

A user will be able to leave like on a brewery. Limited to one time. 

A user will be able to leave a review on a brewery. 

A user will be able to search for breweries based on state.

If I can I want to be able to use the google maps api or just provide a link to google maps with the given address.

====Models====
User
Brewery
Favorite Joiner
Reservation 
Review 


===Relationships===

Loosely based 

User==
User has_many Favorites
User has_many Breweries through: :Favorites

User has_many reservations
User has_many ReservedBreweries through: reservations, source :brewery

User has_many Reviews
User has_many ReviewedBreweries through: Reviews, source :brewery



==========FrontEnd==========

App.js will be my top file

—Folders—
Containers
:Breweries container
:Favorites Container


Components
:Reservation form
:Review Form
:Like
:NewUserForm
:Profile


======Validations======
If logged_in 
Creating new password