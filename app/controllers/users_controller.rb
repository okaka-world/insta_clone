class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index, :new, :create]
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'ログインに成功しました'
      redirect_to root_url
    else
      flash.now[:danger] = '新規登録に失敗しました'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
