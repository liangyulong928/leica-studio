require "open-uri"

class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username,:password))
        if @user.save
            redirect_to :action => "homepage",:controller => "index",:id => @user.id
        else
            render action: :new
        end
    end

    def show
        @user = User.find(params[:id])
        @bloger = User.find(params[:bloger])
        if @user.birthday && @user.birthday!=""
            today  = Date.today
            @age = today.year - @user.birthday.year
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(params[:user].permit(:username,:description,:area,:birthday))
        redirect_to :action => "show",:controller => "users",:id => @user.id,:bloger => @user.id
    end
end
