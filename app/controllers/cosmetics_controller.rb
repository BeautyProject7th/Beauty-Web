class CosmeticsController < ApplicationController
	def new
		@brand = Brand.find(params[:brand_id])
		@cosmetic = @brand.cosmetics.new
	end

	def show
		@brand = Brand.find(params[:brand_id])
		@cosmetic = @brand.cosmetics.find(params[:id])
	end

	def create
		@brand = Brand.find(params[:brand_id])
		@cosmetic = @brand.cosmetics.create(cosmetic_params)

		if @cosmetic.save
			redirect_to brand_cosmetic_path(@brand, @cosmetic)
		else
			render 'new'
		end
	end

	def index

	end

	def update
		@brand = Brand.find(params[:brand_id])
		@cosmetic = @brand.cosmetics.find(params[:id])

		if @cosmetic.update(cosmetic_params)
			redirect_to brand_cosmetic_path(@brand, @cosmetic)
		else
			render 'edit'
		end
	end

	def edit
		@brand = Brand.find(params[:brand_id])
		@cosmetic = @brand.cosmetics.find(params[:id])
	end

	def import
		@brand = Brand.find(params[:brand_id])
		Cosmetic.import(params[:file], @brand)
		redirect_to brands_path
	end

	private
		def cosmetic_params
			params.require(:cosmetic).permit(:cate, :sub_cate, :pdName, :pdImg)
		end
end
