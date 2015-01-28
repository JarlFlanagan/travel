class WelcomeController < ApplicationController
  def index
    @homeland = 'US'
    @countries = ["Italy", "Ireland", "Norway"]
        @flanagansmithfamily = {
        "Husband" => "Ryan",
        "Father" => "Lyle",
        "Mother" => "Dorothy",
        "Sister" => "Haley"
    }
    @images = ["adventurer", "nyc", "squeeze_charleston"]
    @name = params[:name]
  end

  def about
    @color = params[:color]
    @size = params[:size]
    @fromabout = params[:fromabout]
  end
end
