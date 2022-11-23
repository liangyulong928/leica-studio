class OpusController < ApplicationController
  def details
    @opu = Opu.find(params[:opu_id])
    if(params[:id])
      @user = User.find(params[:id])
    end
  end

  def new
    @user = User.find(params[:id])
    @opu = Opu.new()
    @opu.user = @user
  end

  def create
    @opu = Opu.new(params.require(:opu).permit(:opusname,:description,:image))
    @opu.user = User.find(params.require(:opu).require(:user_id))
    if @opu.save
      redirect_to :action => "show",:controller => "users",:id => @opu.user.id,:bloger => @opu.user.id
    else
      render action: :new
    end
  end
end
