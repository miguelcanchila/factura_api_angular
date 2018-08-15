module Api
	module V1
		class ProductsController < ApplicationController
				def index
					product = Product.order('created_at DESC');
					render json: {status: 'SUCCESS', message:'Loaded product', data:product},status: :ok
		    	end

		    	#Mostar fila por ID
		   		def show
		    		product = Product.find(params[:id])
		    		render json: {status: 'SUCCESS', message:'Loaded product', data:product},status: :ok
		    	end

		    	def create
		    		product = Product.new(product_params)
		    		
		    			if product.save
		    			render json: {status: 'SUCCESS', message:'Saved product', data:product},status: :ok
		   		 			else
		   		 			render json: {status: 'ERROR', message:'Product not Saved', data:product.errors},status: :unprocessable_entity
		   		 			end
		   		end

		   		 # Declarar Variable para los parametros de la persona
		    	private
		    	def product_params 
		    		params.permit(:Codigo, :Descripcion, :Unidad, :PorcImpuesto, :Precio)
		   		end
		end
	end
end