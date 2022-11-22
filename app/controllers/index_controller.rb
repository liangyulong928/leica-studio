class IndexController < ApplicationController
  def homepage
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = User.new()
    end
    @opus = Opu.all()
  end

  def login
    
  end

  def loginCheck
    @user = User.find_by(username:params[:username])
    if @user == nil
      
    else
      if @user.password ==(params[:password].to_s)
        redirect_to :action => "homepage",:controller => "index",:id => @user.id
      end
    end
  end

end
