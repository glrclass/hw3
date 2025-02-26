class EntriesController < ApplicationController

  def new
    @place = Place.find_by({ "id" => params["place_id"]})
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end

end
