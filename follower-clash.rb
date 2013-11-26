require_relative 'lib/user_comparer'

john = UserComparer::User.new('caldwelljs')
puts john

kendra = UserComparer::User.new('kendram23')
puts kendra

puts "#{john.username}'s follower count: #{john.followers}"
puts "#{kendra.username}'s follower count: #{kendra.followers}"

new_comparison = UserComparer::Comparer.new(john, kendra)
new_comparison.compare_followers(john, kendra)

puts "#{john.username}'s friend count: #{john.friends}"
puts "#{kendra.username}'s friend count: #{kendra.friends}"

new_comparison.compare_friend_count(john, kendra)


new_comparison = UserComparer::Comparer.new(john, kendra)
new_comparison.compare_tweet_count(john, kendra)\

puts "#{john.username}'s tweet count: #{john.tweet_counter}"
puts "#{kendra.username}'s tweet count: #{kendra.tweet_counter}"
puts "#{john.username}'s last tweet: #{john.last_tweet}"
puts "#{john.username}'s twitter handle: @#{john.handle}"
puts "#{john.username}'s twitter url: #{john.url}"