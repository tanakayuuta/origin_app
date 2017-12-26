#micropostに関するコントローラー

class MicropostsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user,   only: :destroy#ログインユーザーだけが自分のツイートを削除できる

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "ツイートを投稿しました！"
      redirect_to mypage_url#投稿後にマイページに
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :image) 
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :image) 
    end
end