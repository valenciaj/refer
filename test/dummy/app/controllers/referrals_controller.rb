class ReferralsController < ApplicationController
  before_action :set_refer_cookie
  before_action :set_user, only: [ :create ]

  def show
    head :ok
  end

  def create
    refer @user
    head :ok
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
