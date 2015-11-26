class CommentsController < ApplicationController
before_action :authenticate_user!
before_action :get_muz
	# ********* Actions
	def create
		@comment = @muz.comments.build(comment_params)
		@comment.user = current_user

		if @comment.save
			redirect_to @muz
		else
			render "muzs/new"
		end
	end

	def destroy
		@comment = @muz.comments.find(params[:id])
		@comment.destroy

		redirect_to muz_path(@muz)
		
	end



	# ****** Methods
	private

	def get_muz
		@muz = Muz.find(params[:muz_id])
	end

	def comment_params
		params.require(:comment).permit(:content)
	end
end
