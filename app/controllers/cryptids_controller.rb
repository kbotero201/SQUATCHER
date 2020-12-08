class CryptidsController < ApplicationController

    def index
        @cryptids = Cryptid.all
    end

    def show
        find_cryptid
    end

    def new
        @cryptid = Cryptid.new
    end

    def create
        cryptid = Cryptid.create(cryptid_params)
        if cryptid.valid?
            redirect_to cryptid_path(cryptid)
        else
            flash[:cryptid_errors] = cryptid.errors.full_messages
            redirect_to new_cryptid_path
        end
    end

    def edit
        find_cryptid
    end

    def update
        find_cryptid
        if @cryptid.valid?
            @cryptid.update(cryptid_params)
            redirect_to cryptid_path(@cryptid)
        else
            flash[:cryptid_errors] = @cryptid.errors.full_messages
            redirect_to new_cryptid_path
        end
    end

    def destroy
        find_cryptid
        @cryptid.destroy
        redirect_to cryptids_path
    end

    private

    def find_cryptid
        @cryptid = Cryptid.find(params[:id])
    end

    def cryptid_params
        params.require(:cryptid).permit(:name, :description)
    end

end
