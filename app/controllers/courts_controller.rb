class CourtsController < ApplicationController

    def index
        @courts = Court.all

        @chicago_courts = Court.chicago_ball_parks
    end
    
end
