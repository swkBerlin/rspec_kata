require "./lib/reservation_service"

describe ReservationService do

  before do
    @service = ReservationService.new
    @service.reset  
  end

  it "test_reserving_two_seats_in_empty_carriage" do
    reserved_seat_numbers = @service.reserve(2)
    reserved_seat_numbers.should == [1,2]
  end

  it "test_reserving_three_seats_in_empty_carriage" do
    reserved_seat_numbers = @service.reserve(3)
    reserved_seat_numbers.should == [1,2,3]
  end

  it "test_reserving_two_seats_in_non_empty_carriage" do
    @service.reserve(1)
    reserved_seat_numbers = @service.reserve(2)

    reserved_seat_numbers.should == [2,3]
  end

  it "test_listing_when_no_reservations" do
    @service.list_reserved(3).should == []
  end

  it "test_listing_reservations" do
    @service.reserve(1)
    @service.reserve(3)

    @service.list_reserved(3).should == [1,2,3]
  end
end
