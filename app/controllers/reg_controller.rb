class RegController < ApplicationController

  def registration
  end

  def confirmation
    @user = User.new
    @user.fullname = params[:fullname]
    @user.address = params[:address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.country = params[:country]
    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]

    if @user.save
      cookies[:user_id] = @user.id
    
    else
      render plain: 'Could not save user'
      end
  end
end
