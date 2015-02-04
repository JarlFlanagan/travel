class WelcomeController < ApplicationController
    

      def index
        @united_states = {"capital city" => "Washington, DC",
                        "favorite city" => "Asheville, NC",
                        "favorite state" => "Oregon",
                        "flag colors" => ["red", "white", "blue"]
        }
        end



        @homeland = 'US'
        @countries = ["Italy", "Ireland", "Norway"]
      
        #@images = ["adventurer", "nyc", "squeeze_charleston"]
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

