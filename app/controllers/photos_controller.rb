class PhotosController < ApplicationController
  def index
  end

  def new
    @photo = Photo.new
  end

  def create
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :position, :image)
  end

end
