class CompanyController < ApplicationController
	before_action :set_company, only: [:edit, :destroy]

	#GET /companies
	def index
		@companies = Company.all
	end


	# GET /companies/new
	def new
		@company = Company.new
	end

	# get /companies/:id/edit
	def edit
	end


	# POST /companies
	def create
		@company = Company.new(company_params)

		respond_to do |format|
			if @company.save 
				format.html {redirect_to action: "index"}
				format.json { render :show, status: :created, location: @company }
			else
				format.new
			end
		end
	end

	# delete /companies/:id 
	def destroy
	  @company.destroy
	  redirect_to(action: "index")
	end

	private
		def set_company
			@company = Company.find(params[:id])
		end

		def company_params
	      params.require(:company).permit(:name, :city, :is_active)
	    end
end
