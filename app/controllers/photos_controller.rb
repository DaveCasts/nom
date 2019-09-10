class PhotosController < ApplicationController
  before_action :authenticate_user!

  def new
    @photo = Photo.new
  end
  
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params)
    redirect_to place_path(@place)
  end

private

  def photo_params
    params.require(:photo).permit(:picutre, :caption)
  end

end