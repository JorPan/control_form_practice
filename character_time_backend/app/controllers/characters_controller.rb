class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render json: @characters
  end

  def create
    @new_character = Character.create(
      name: params[:name],
      age: params[:age],
    )
    render json: @new_character 
  end

  def show
    @character = Character.find( params[:id])
    render json: @character
  end
end
