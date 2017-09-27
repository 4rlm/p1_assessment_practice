require_relative 'water_bottle'
require_relative 'tent'
require_relative 'sleeping_bag'
require_relative 'campsite'
require_relative 'camping_supply'

require_relative 'damage_report'
require_relative 'incident_report'

####################################
# camping_supply_args = {}
# camping_supply = CampingSupply.new(camping_supply_args)
# puts camping_supply.inspect

####################################
puts "\n------------------"
water_bottle_args = { capacity: 2, material: 'tin' }
water_bottle = WaterBottle.new(water_bottle_args)
# puts water_bottle.inspect
puts water_bottle.reserve
puts water_bottle.end_reservation
puts water_bottle.reserved?
puts water_bottle.available?
puts water_bottle.reserved?

puts water_bottle.damaged?
puts water_bottle.record_damage
puts water_bottle.repair


####################################
puts "\n------------------"
tent_args = { capacity: 3 }
tent = Tent.new(tent_args)
# puts tent.inspect
puts tent.reserve
puts tent.end_reservation
puts tent.reserved?
puts tent.available?
puts tent.reserved?

puts tent.damaged?
puts tent.record_damage
puts tent.repair


####################################
puts "\n------------------"
sleeping_bag_args = { style: "rectangular", size: "adult", shell: "nylon" }
sleeping_bag = SleepingBag.new(sleeping_bag_args)
# puts sleeping_bag.inspect
puts sleeping_bag.reserve
puts sleeping_bag.end_reservation
puts sleeping_bag.reserved?
puts sleeping_bag.available?
puts sleeping_bag.reserved?

puts sleeping_bag.damaged?
puts sleeping_bag.record_damage
puts sleeping_bag.repair



####################################
puts "\n------------------"
campsite_args = {location: "unassigned", square_footage: 2000, power: false, water: false}
campsite = Campsite.new(campsite_args)
# puts campsite.inspect
puts campsite.reserve
puts campsite.end_reservation
puts campsite.reserved?
puts campsite.available?
puts campsite.reserved?


puts '\n#######################\n\n'
damage_report = DamageReport.new(args = {})
puts damage_report.resolved?
puts damage_report.close
puts damage_report.assigned?

puts '\n#######################\n\n'
incident_report = IncidentReport.new(args = {})
puts incident_report.resolved?
puts incident_report.close
puts incident_report.assigned?
