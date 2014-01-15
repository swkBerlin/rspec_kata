#Welcome to the Seat Reservation System 2000

This is a revolutionary command line tool to reserve seats in a train.

The purpose is for you to improve your pure programming skills. 

To run it you need Ruby >= 1.8 and rspec installed.

When you have Ruby installed, to install RSpec run:

	 gem install rspec

or, depending on your system,

	 sudo gem install rspec

To run the tests run

	rspec

it should show 7 passed tests if everything is installed correctly

###How the application works

This app implements the following two user stories:

_As a passenger, I want to reserve seats on the train so that I can sit with my homies. And of course I want to know the number(s) of the seat(s) I reserved, duh._

_As a Deutsche Bahn personnel, I want to get a list of the seats that are reserved so that I can mark them in the carraige with a little 'X' so that those freeloaders who don't pay to reserve seats don't stop me from making my millions._

It's a ruby app, so we've provided you with a ruby script that handles the commandline input and output. Clone this repository and run:

	> ./reserve.rb
	
You will get a prompt, and it works like this:

	Welcome to the SRS 2000!
	How many seats do you want to reserve?
	2  <-- your customer enters this
	Your reserved seat numbers are:
	12,13 <-- your program calculates this
	
If you run the other script `list`, it will list all the seat numbers that are reserved, eg.
	
	> ./list.rb
	The following seats are reserved:
	1,2,3,4,5,6,7,8,9,10,11,12,13
	
That means seats 1-13 have been reserved. For now the carriage has 20 seats in rows of 2. You can allocate the seats just sequentially for now, nothing fancy.

###The challenge

First you have to write the tests for [Store.read](spec/store_spec.rb), to learn RSpec

Then you can improve [reservation_service_spec.rb](spec/reservation_service_spec.rb) using RSpec.







	


