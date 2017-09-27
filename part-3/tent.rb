require_relative 'track_reservation.rb'
require_relative 'track_damage.rb'

class Tent
  include TrackReservation
  include TrackDamage

  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end

end
