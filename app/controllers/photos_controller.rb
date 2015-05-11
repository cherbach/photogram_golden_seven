class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def create_photo
    @photo = Photo.new
    @photo.caption = params[:caption]
    @photo.source = params[:source]
    @photo.save
    redirect_to("http://localhost:3000/photos")
  end

  def show
  	@photo = Photo.find(params[:id])
  end


  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    photo = Photo.find(params[:id])
    photo.source = params[:the_source]
    photo.caption = params[:the_caption]
    photo.save

    redirect_to("http://localhost:3000/photos")
  end
end

