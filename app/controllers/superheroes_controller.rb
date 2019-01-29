class SuperheroesController < ApplicationController

  def index
    @hero = Superhero.create(name: "ThisGuy", description: "He farts")
    render 'index'
  end

  def new
  end

  def create
  end

  def show

  end

  def edit
  end

  def delete
  end


  private
    def superheroes_params
      params.require(:superhero).permit(:name, :description)
    end


end
