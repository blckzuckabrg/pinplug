class PlugsController < ApplicationController
  before_action :set_plug, only: [:show, :edit, :update, :destroy]

  # GET /plugs
  def index
    @plugs = Plug.all
  end

  # GET /plugs/1
  def show
  end

  # GET /plugs/new
  def new
    @plug = Plug.new
  end

  # GET /plugs/1/edit
  def edit
  end

  # POST /plugs
  def create
    @plug = Plug.new(plug_params)

      if @plug.save
        redirect_to @plug, notice: 'Plug was successfully created.' 
      else
        render :new 
      end
    end
  

  # PATCH/PUT /plugs/1
  def update
    
      if @plug.update(plug_params)
        redirect_to @plug, notice: 'Plug was successfully updated.'  
      else
        render :edit   
    end
  end

  # DELETE /plugs/1
  def destroy
    @plug.destroy
    
     redirect_to plugs_url, notice: 'Plug was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plug
      @plug = Plug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plug_params
      params.require(:plug).permit(:description)
    end
end
