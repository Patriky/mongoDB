class VehicleController < ApplicationController
	before_action :set_vehicle, only: [:edit]

	# GET /vehicles/index
	def index
		@vehicles = Vehicle.all
	end

	# GET /vehicles/new
	def new
		@vehicle = Vehicle.new
	end

	# GET /vehicles/:id/edit
	def edit
		
	end

	# post /vehicles
	def create
		@vehicle = Vehicle.new(vehicle_params)

		respond_to do |format|
			if @vehicle.save 
				format.html {redirect_to action: "index"}
				format.json { render :show, status: :created, location: @vehicle }
			else
				format.new
			end
		end
	end

	private
		def set_vehicle
			@vehicle = Vehicle.find(params[:id])
		end
		def vehicle_params
	      params.require(:vehicle).permit(:model, :plate, :company_id)
	    end
end
