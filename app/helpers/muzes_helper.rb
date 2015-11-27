module MuzesHelper

	def upvotes(muz)
		if !muz.get_upvotes.empty?
			" - #{pluralize(muz.get_upvotes.size,'like')} "
		end
	end


	def downvotes(muz)
		if !muz.get_downvotes.empty?
			" - #{pluralize(muz.get_downvotes.size,'dislike')} "
		end
	end

	def coments(muz)
		if !(muz.comments.count == 0)
			pluralize(muz.comments.count, "comment")
		end
	end
end
