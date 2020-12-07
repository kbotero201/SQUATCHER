class SightingsController < ApplicationController

    def index
        @sightings = Sighting.all
    end

    def show
        find_sighting
    end

    def new
        @sighting = Sighting.new
    end

    def create
        hash = sighting_params
        hash[:user_id] = @current_user.id
        sighting = Sighting.create(hash)
        if sighting.valid?
            redirect_to sighting_path(sighting)
        else
            flash[:sighting_errors] = sighting.errors.full_messages
            redirect_to new_sighting_path
        end
    end

    def edit
        find_sighting
    end

    def update
        find_sighting
        if @sighting.valid?
            @sighting.update(sighting_params)
            redirect_to sighting_path(@sighting)
        else
            flash[:sighting_errors] = @sighting.errors.full_messages
            redirect_to new_sighting_path
        end
    end

    def destroy
        find_sighting
        @sighting.destroy
        redirect_to sightings_path
    end

    private

    def find_sighting
        @sighting = Sighting.find(params[:id])
    end

    def sighting_params
        params.require(:sighting).permit(:date, :location, :creature_temperament, :fear_rating, :description, :expedition_id, :user_id, :cryptid_id)
    end


end
