class HomeController < ApplicationController
  def index

  end

  def export_users
    @users = User.order(:user_name).all.limit(50)
    respond_to do |format|
      format.csv { send_data @users.to_csv(['user_name', 'user_email', 'phone_number']) }
    end
  end

end