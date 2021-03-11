class PagesController < ApplicationController
  def home
    if params[:query].present?
      @trips = Trip.global_search(params[:query])
    else
      @trips = Trip.all
    end
  end
end
