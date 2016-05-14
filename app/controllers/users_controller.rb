class UsersController < ApplicationController

	def index
		@users =  User.all
	end

  def show
    @user = User.find User.decode_id(params[:id])
  end
end
