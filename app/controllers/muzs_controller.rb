class MuzsController < ApplicationController
before_action :set_muz, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:index, :show]

# ********************** Actions

  def index
  	@muzs = Muz.all.order("created_at DESC")
  end

  def show
    @comment = @muz.comments.all
  end

  def new
  	@muz = current_user.muzs.build
  end

  def create
  	@muz = current_user.muzs.build(muz_params)
  	if @muz.save
  		redirect_to @muz
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @muz.update(muz_params)
  		redirect_to @muz
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@muz.destroy
  	redirect_to root_path
  end

  # ******************** METHODS
  private

  def set_muz
  	@muz = Muz.find(params[:id])
  end
  def muz_params
  	params.require(:muz).permit(:title, :description, :picture)
  end
end
