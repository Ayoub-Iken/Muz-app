module ApplicationHelper

	def user_voted_up(user, muz)
		if user.voted_up_on? muz
			'disabled'
		end
	end

	def user_voted_down(user, muz)

		if user.voted_down_on? muz
			'disabled'
		end
		
	end

	def voters_up(muz)
		votes = muz.votes_for.up.by_type(User).voters# Getting the votes from the actual muz
		voters = []
		votes.each do |i| # getting the names of users_id extracted from votes
			voters << i.name
		end

		voters #array containing user's names

	end

	def voters_down(muz)
		votes = muz.votes_for.down.by_type(User).voters  # Getting the voters of the actual muz
		voters = []
		votes.each do |i| # getting the names of the voters extracted from the muz
			voters << i.name
		end

		voters #array containing user's names

	end
end
