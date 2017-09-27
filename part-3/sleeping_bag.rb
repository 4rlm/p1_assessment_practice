require_relative 'track_reservation.rb'
require_relative 'track_damage.rb'

class SleepingBag
  include TrackReservation
  include TrackDamage

  attr_reader :style, :size, :shell

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
  end

end
