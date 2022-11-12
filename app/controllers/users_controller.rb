class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(params.require(:user).permit(:username,:password))
        if @user.save
            redirect_to "/index/homepage"
        else
            render action: :new
        end
    end
end
