require_relative 'lib/user_comparer'

mike = UserComparer::User.new('ornellasmike')
puts mike

matt = UserComparer::User.new('techpeace')
puts matt

puts "#{mike.username}'s follower count: #{mike.followers}"
puts "#{matt.username}'s follower count: #{matt.followers}"

new_comparison = UserComparer::Comparer.new(mike, matt)
new_comparison.compare(mike, matt)