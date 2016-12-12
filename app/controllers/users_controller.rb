class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @events_list = @user.events
      render :show
    end
  end
