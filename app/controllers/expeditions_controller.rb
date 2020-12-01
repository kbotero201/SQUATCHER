class ExpeditionsController < ApplicationController

    def index
        @expeditions = Expedition.all
    end

    def show
        find_expedition
    end

    def new
        @expedition = Expedition.new
    end

    def create
        expedition = Expedition.create(expedition_params)
        if expedition.valid?
            redirect_to expedition_path(expedition)
        else
            flash[:expedition_errors] = expedition.errors.full_messages
            redirect_to new_expedition_path
        end
    end

    def edit
        find_expedition
    end

    def update
        find_expedition
        if @expedition.valid?
            @expedition.update(expedition_params)
            redirect_to expedition_path(@expedition)
        else
            flash[:expedition_errors] = @expedition.errors.full_messages
            redirect_to new_expedition_path
        end
    end

    def destroy
        find_expedition
        @expedition.destroy
        redirect_to expeditions_path
    end

    private

    def find_expedition
        @expedition = Expedition.find(params[:id])
    end

    def expedition_params
        params.require(:expedition).permit(:days, :season, :region, :user_id)
    end

end
