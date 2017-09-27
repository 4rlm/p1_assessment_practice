require_relative 'track_reservation.rb'
require_relative 'track_damage.rb'

class WaterBottle
  include TrackReservation
  include TrackDamage

  attr_reader :capacity, :material

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
  end

end
