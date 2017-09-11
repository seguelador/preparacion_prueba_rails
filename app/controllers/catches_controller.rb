class CatchesController < ApplicationController
	before_action :set_catch, only: [:level_up]
	before_action :set_pokemon, only: [:add_pokemon]

  def index
  	@catches = current_user.catches
  	@pokemons = Pokemon.all
  end

  def level_up
  	@catch.level += 1
  	respond_to do |format|
  	  if @catch.save
  	    format.html { redirect_to catches_url, notice: 'Subió de nivel' }
  	  else
  	    format.html { render catches_url, notice: 'No pudo subir de nivel' }
  	  end
  	end
  end

  def add_pokemon
  	catch = Catch.create(user: current_user, pokemon: @pokemon)
  	respond_to do |format|
  	  if catch.persisted?
  	    format.html { redirect_to catches_url, notice: 'Agregado correctamente' }
  	  else
  	    format.html { render catches_url, notice: 'No se pudo agregar' }
  	  end
  	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catch
      @catch = Catch.find(params[:id])
    end

    def set_pokemon
    	@pokemon = Pokemon.find(params[:pokemon_id])    	
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catch_params
      params.require(:catch).permit(:level)
    end
end
