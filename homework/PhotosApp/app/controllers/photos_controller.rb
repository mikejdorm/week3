class PhotosController < ApplicationController

def new
	@photo = Photo.new
end

def create
	@photo = Photo.new(params[:photo])
	@photo.save
	redirect_to @photo
end

def index
	@photos = Photo.all
end


def edit
	@photo = Photo.find(params[:id])
end


def update
	@photo = Photo.find(params[:id])
	@photo.update_attributes(params[:photo])
	redirect_to @photo
end


def destroy
	@photo = Photo.find(params[:id])
	@photo.destroy
	redirect_to photos_url 
end


def show
	@photo = Photo.find(params[:id])
end




end
