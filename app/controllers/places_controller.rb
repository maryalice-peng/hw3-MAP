class PlacesController < ApplicationController

def index
  # find all Places rows
  @places = Place.all
  
end

def show
  # find place 
  @place = Place.find_by({"id" => params["id"]})
  @entries = Entry.where({"place_id" => @place["id']"]})

end


def new
end 

def create
  # create a Place
  @place = Place.new
  @place["name"] = params["name"]
  #save the new place row
  @place.save
  #redirect user 
  redirect_to "/places"
end

end