class UsersController < ApplicationController
  def new

  end

  def create

    @user = User.new
    puts "<====>"
    puts params
    puts "<====>"
    @user.username = params["user"][:username]
    @user.email = params["user"][:email]
    @user.bio = params["user"][:bio]
    @user.save
    # User.create(username:a, email:b, bio:c)
    redirect_to "/"
  end

  def user

  end

end
