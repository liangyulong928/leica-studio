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
end
