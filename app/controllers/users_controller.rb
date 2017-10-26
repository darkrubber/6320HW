class UsersController < ApplicationController

  def index
    @users_all = User.all
  end

  def show
    @users = User.find(params[:id])

    @photos =[]
    @comments = []
    Photo.all.each do |photo|
      if photo.user_id == params[:id]
        @photos << photo
        if photo.comments.any?
          photo.comments.each do |comments|
            @comments << comments
            end
        end
      end
    end
  end
end
