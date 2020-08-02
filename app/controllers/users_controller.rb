class UsersController < ApplicationController
  before_action :authenticate_user!
  def destroy
    current_user.destroy
    redirect_to root_path, notice: '退会が完了しました。'
  end
end
