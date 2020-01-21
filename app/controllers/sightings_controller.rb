class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        # not be very DRY
        # render json: sightings.to_json(:include => {
        #   :bird => {:only => [:name, :species]},
        #   :location => {:only => [:latitude, :longitude]}
        # }, :except => [:updated_at])

        render json: SightingSerializer.new(sightings).to_serialized_json
    end

    def show
        sighting = Sighting.find(params[:id])
        # not be very DRY
        # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])

        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
