# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

purchased_numbers = ['+12013451095']

purchased_numbers.each do |p|
	if not TwilioNumber.find_by_number(p)
		TwilioNumber.create(:number => p, :in_use => false)
	end
end