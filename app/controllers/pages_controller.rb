class PagesController < ApplicationController
    def index
        @sightings = Sighting.all
        @users = User.all
    end
end