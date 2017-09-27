require_relative 'track_damage.rb'

class DamageReport
  include TrackDamage

  attr_reader :description, :cost_estimate
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "not specified" }
    @cost_estimate = args[:cost_estimate]
    @resolved = false
  end

end
