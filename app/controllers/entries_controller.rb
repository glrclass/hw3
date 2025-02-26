class EntriesController < ApplicationController

  def new 
    #might need something here :  @company = Company.find_by({ "id" => params["company_id"] })
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["description"] = params["description"]

    @entry["place_id"] = params["place_id"]

    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
