class UsersController < ApplicationController
  def show
    @user = User.find User.decode_id(params[:id])
  end
end
