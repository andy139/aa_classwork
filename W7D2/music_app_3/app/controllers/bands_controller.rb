class BandsController < ApplicationController

    def new
        render :new
    end

    def index
        @bands = Band.all
        render json: @bands
    end

    def show
        @band = Band.find_by(id: params[:id])
        render json: @band

    end

    def create
        band = Band.new(band_params)
        if band.save
            redirect_to band_url(band)
        end
    end


    def band_params

        params.require(:band).permit(:name)
    end

    def destroy
        band = Band.find_by(id: params[:id])
        band.destroy
        render :new

    end
end
