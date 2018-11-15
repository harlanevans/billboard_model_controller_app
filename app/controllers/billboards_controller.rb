class BillboardsController < ApplicationController
  
  before_action :set_billboard, except: [:index, :new, :create]
  
  def index
    @billboards = Billboard.all
  end

  def show
    #before_action - set_billboard
  end
  
  def edit
    #before_action - set_billboard
  end
  
  def update
    if @billboard.update(billboard_params)
      redirect_to billboard_path
    else
      render :edit
    end
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboard_path
  end

    private

    def billboard_params
      params.require(:billboard).permit(:name, :location)
    end
    
    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

end
