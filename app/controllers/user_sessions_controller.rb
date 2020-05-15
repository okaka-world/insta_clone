class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  def new
    # binding.pry
  end

  def create
    if (@user = login(params[:email], params[:password]))
      redirect_back_or_to :users
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to :users, info: 'ログアウトしました'
  end
end
