require File.expand_path(File.dirname(__FILE__) + '/store')

class ReservationService

  def initialize
    @store = Store.new
  end

  def reserve(num_seats)
    old_seats = seats
    
    newly_reserved_seats = []
    num_seats.times do |i|
      newly_reserved_seats << (old_seats.last.to_i + 1 + i)
    end

    @store.write(old_seats + newly_reserved_seats) # was ist der rückgabewert?
    newly_reserved_seats
  end

  def list_reserved
    seats
  end

  def reset
    @store.reset
  end

  private
  def seats
    @store.read
  end
end
