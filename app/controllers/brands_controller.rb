class BrandsController < ApplicationController
	def new
		@brand = Brand.new
	end

	def index
		@brands = Brand.all.order('brands.created_at DESC')
	end

	def update
		@brand = Brand.find(params[:id])

		if @brand.update(brand_params)
			redirect_to @brand
		else
			render 'edit'
		end
	end

	def create
		@brand = Brand.new(brand_params)

		if @brand.save
			redirect_to brand_path(@brand)
		else
			render 'new'
		end
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def show
		@brand = Brand.find(params[:id])
	end

	private
		def brand_params
			params.require(:brand).permit(:brand, :crawler)
		end
end
