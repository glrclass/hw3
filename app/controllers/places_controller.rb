class PlacesController < ApplicationController
  def index
    render :inline => "Test"
  end
end

#at the end I will have: index, show, new, and create actions
