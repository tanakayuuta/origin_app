class ImagepostsController < ApplicationController
  before_action :set_imagepost, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @imageposts = Imagepost.all
    respond_with(@imageposts)
  end

  def show
    respond_with(@imagepost)
  end

  def new
    @imagepost = Imagepost.new
    respond_with(@imagepost)
  end

  def edit
  end

  def create
    @imagepost = Imagepost.new(imagepost_params)
    @imagepost.save
    respond_with(@imagepost)
  end

  def update
    @imagepost.update(imagepost_params)
    respond_with(@imagepost)
  end

  def destroy
    @imagepost.destroy
    respond_with(@imagepost)
  end

  private
    def set_imagepost
      @imagepost = Imagepost.find(params[:id])
    end

    def imagepost_params
      params.require(:imagepost).permit(:name, :comment)
    end
end
