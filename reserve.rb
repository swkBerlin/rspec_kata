#!/usr/bin/env ruby

require './lib/reservation_service'

service = ReservationService.new

puts "Welcome to the SRS 2000!"
puts "How many seats do you want to reserve?"
answer = gets
num_seats = answer.to_i

reserved_seat_numbers = service.reserve(num_seats)

puts "Your reserved seat numbers are:"
puts reserved_seat_numbers.join(',')

