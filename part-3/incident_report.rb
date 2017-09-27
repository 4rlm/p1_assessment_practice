require_relative 'track_damage.rb'

class IncidentReport
  include TrackDamage

  attr_reader :description, :reporter
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "not specified" }
    @reporter = args.fetch(:reporter) { "anonymous" }
    @resolved = false
  end

end
