class OpusController < ApplicationController
  def details
    @opu = Opu.find(params[:opu_id])
    @user = User.find(params[:id])
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

  def edit
    @opu = Opu.find(params[:id])
    @user = @opu.user
  end

  def update
    @opu = Opu.find(params[:id])
    @opu.update(params[:opu].permit(:opusname,:description))
    redirect_to :action => "details",:controller => "opus",:id => @opu.user.id,:opu_id => @opu.id
  end
end
