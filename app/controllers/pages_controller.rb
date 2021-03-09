class PagesController < ApplicationController
  def home
    @trips = Trip.all
  end
end
