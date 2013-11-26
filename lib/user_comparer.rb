require 'rubygems'
require 'bundler/setup'
require 'twitter'

module UserComparer
	class User
		attr_reader :username

		def initialize(username)
			@username = username
		end

		def auth
			client = Twitter::REST::Client.new do |config|
				config.consumer_key 		    = ENV['CONSUMER_KEY']
				config.consumer_secret     = ENV['CONSUMER_SECRET']
				config.access_token			    = ENV['OAUTH_TOKEN']
				config.access_token_secret  = ENV['OAUTH_TOKEN_SECRET']
			end
			client
		end

		def followers
			auth.user(@username).followers_count
		end
		
		def friends
			auth.user(@username).friends_count
		end

		def tweet_counter
			auth.user(@username).tweets_count
		end
	end

	class Comparer
		
		def initialize(user1, user2)
			@user1 = user1
			@user2 = user2
		end

		def compare_followers(user1, user2)
			if user1.followers > user2.followers
				puts "And the user with the most followers is: #{user1.username}"
			elsif user1.followers < user2.followers
				puts "And the user with the most followers is: #{user2.username} "
			else
				puts "Users have the same number of followers"
			end
		end

		def compare_friend_count(user1, user2)
			if user1.friends > user2.friends
				puts "And the user with the most friends is: #{user1.username}"
			elsif user1.friends < user2.friends
				puts "And the user with the most friends is: #{user2.username} "
			else
				puts "Users have the same number of friends"
			end
		end

		def compare_tweet_count(user1, user2)
			if user1.tweet_counter > user2.tweet_counter
				puts "And the user with the most tweets is: #{user1.username}"
			elsif user1.tweet_counter < user2.tweet_counter
				puts "And the user with the most tweets is: #{user2.username} "
			else
				puts "Users have the same number of friends"
			end
		end
	end
end