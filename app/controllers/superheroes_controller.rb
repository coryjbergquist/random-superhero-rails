require 'pry'

class SuperheroesController < ApplicationController

  def index
    @all = Superhero.all
    
    render 'index'
  end

  def new
  end

  def create
    @superhero = Superhero.create(superhero_params)
    redirect_to @superhero
  end

  def show
    binding.pry
    @superhero = Superhero.find(params[:id])
  end

  def edit
  end

  def delete
  end


  private
    def superhero_params
      params.require(:superhero).permit(:name, :description)
    end


end
