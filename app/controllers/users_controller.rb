class UsersController < ApplicationController
  before_action :set_user

  def show
    @user = User.find(params[:id])
  end

  private

  def set_user
    @user = current_user
  end
end
