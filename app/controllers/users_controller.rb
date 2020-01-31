# frozen_string_literal: true

class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(username: params[:name], email: params[:email], password: params[:password])

    if @user.save
      puts "AAAaaaaAAAAAAAAA"
      redirect_to '/users/new'
    else
      puts "BBBBBBBBBBBBBBBB"
      render '/users/new'
    end
  end
end
