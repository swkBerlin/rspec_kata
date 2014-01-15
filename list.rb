#!/usr/bin/env ruby

require './lib/reservation_service'

service = ReservationService.new
reserved_seat_numbers = service.list_reserved()

puts "The following seats are reserved:"
puts reserved_seat_numbers.join(',')

