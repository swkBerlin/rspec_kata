#Welcome to the Seat Reservation System 2000

This is a revolutionary command line tool to reserve seats in a train. The service is already provided and you need to refactor the tests.

To run it you need Ruby >= 1.8 and rspec installed.

When you have Ruby installed, to install RSpec run:

	 gem install rspec

or, depending on your system,

	 sudo gem install rspec

To run the tests run

	rspec

if everything is installed correctly, you get

	....

	Finished in 0.01621 seconds
	4 examples, 0 failures
	Run options: 

	# Running tests:

	......

	Finished tests in 0.010854s, 552.8162 tests/s, 644.9522 assertions/s.

	6 tests, 7 assertions, 0 failures, 0 errors, 0 skips

###How the application works

This app implements the following two user stories:

_As a passenger, I want to reserve seats on the train so that I can sit with my homies. And of course I want to know the number(s) of the seat(s) I reserved, duh._

_As a Deutsche Bahn personnel, I want to get a list of the seats that are reserved so that I can mark them in the carraige with a little 'X' so that those freeloaders who don't pay to reserve seats don't stop me from making my millions._

You can not actually execute this application, because we want you to focus o n the tests. To see examples how it should work, look at the tests!

###The challenge

First improve [reservation_service_spec.rb](spec/reservation_service_spec.rb) using RSpec. Start with list_reservations and then refactor the tests for reserve.

Then refactor [store_spec.rb](spec/store_spec.rb). It is a test/unit test, so you have to port it to RSpec first. You will need mocking and there is sample code for the necessary mocking in the comments.

### Solution

You can find a link to the solution in the issues (so that you do not peek too early ;-))




	


