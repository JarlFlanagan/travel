class WelcomeController < ApplicationController
    
        before_action :set_color

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
        @fromabout = params[:fromabout]
        #@color = params[:color]
        #can set param for session as well
        #look to see if you set a color with a param
       

        # ! turns this into a if not statement
        # if params[:color].nil is another way to set up a default
        #if !params[:color]
           # param[:color] = 'green'
        #else 
            #@color = params[:color]
        #end
      end

      def about
        @fromabout = params[:fromabout]
      end

      def contact
      end


    private
    def set_color

         @color = params[:color]
            #if there was a color, set it for the session
            if @color
                 session[:color] = @color
            else
                @color = session[:color]
            end
    end

    def set_shoesize

        @size = param[:size]
            if @size
                session[:size] = @size
            else
                @size = session[:color]
            end
    end

end
