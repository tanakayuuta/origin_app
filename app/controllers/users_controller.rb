class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  before_action :admin_user,     only: :destroy  #管理者だけユーザー削除が出来る

  def index
    @users = User.paginate(page: params[:page])
  end


  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  
  def destroy #ユーザー削除に関するコントローラー
    User.find(params[:id]).destroy
    flash[:success] = "ユーザー消しちゃいました！" 
    redirect_to users_url
  end
  
  
  private
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
  
end