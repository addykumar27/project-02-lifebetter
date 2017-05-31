class UsersController < ApplicationController

before_action :authenticate_user!, only: [:index, :show]

  #get '/users/', to: 'users#index', as: 'users'
  def index
    @users = User.all
  end

  #get '/users/:user_id', to: 'users#show', as: 'user'
  def show
    @user = User.find (params[:user_id])
    @tips = @user.tips
  end



end
