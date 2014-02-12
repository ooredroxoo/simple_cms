class ModelosManagerController < ApplicationController

	def index
		@modelos = Modelo.all
		puts @modelos
	end

	def register_models
		modelo = Modelo.new
		modelo.name = params[:name]
		modelo.country = params[:country]
		modelo.save
		redirect_to(:controller => 'ModelosManager', :action => 'index')
	end

end
