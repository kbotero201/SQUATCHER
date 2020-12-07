class ExpeditionsController < ApplicationController



    def index
        @expeditions = Expedition.all
    end

    def show
        find_expedition
    end

    # def new   #####--- Original
    #     @expedition = Expedition.new
    # end

    # def create    #####--- Original
    #     expedition = Expedition.create(expedition_params)
    #     if expedition.valid?
    #         redirect_to expedition_path(expedition)
    #     else
    #         flash[:expedition_errors] = expedition.errors.full_messages
    #         redirect_to new_expedition_path
    #     end
    # end

    ####### -----------    From Lectrure ------------#######

    def new 
        @expedition = Expedition.new
    
        # render :new
    end
    
    
    def create 
        @current_user.expeditions << Expedition.create(expedition_params)
    
    
        redirect_to expedition_path(Expedition.last)
        # redirect_to planet_path(trip.last.planet)
    end 

    ###### -------------------------------------------########


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

    # def expedition_params   #########------ Original
    #     params.require(:expedition).permit(:days, :season, :region, :user_id)
    # end

    def expedition_params
        params.require(:expedition).permit(:name, :days, :season, :region)
    end


end
