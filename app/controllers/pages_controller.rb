class PagesController < ApplicationController
  def home
    add_breadcrumb "home", :root_path
    if params[:query].present?
      @trips = Trip.global_search(params[:query])
    else
      @trips = Trip.all
    end
  end
end
