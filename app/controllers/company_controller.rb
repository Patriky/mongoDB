class CompanyController < ApplicationController
	before_action :set_company, only: [:edit, :destroy, :update]

	#GET /companies
	def index
		@companies = Company.all
	end

	# GET /companies/:id
	def show
	end

	# GET /companies/new
	def new
		@company = Company.new
	end

	# get /companies/:id/edit
	def edit
		#puts "@"*100
		#puts "Entrou no edit"
		#puts "@"*100
	end

	# PUT /companies/:id
	def update
	    respond_to do |format|
	      if @company.update(company_params)
			format.html {redirect_to action: "index"}
	      else
	        format.html { render :edit }
	      end
	    end		
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
			puts "o"*100
			puts @company.id
			puts ""*100

		end

		def company_params
	      params.require(:company).permit(:name, :city, :is_active)
	    end
end
