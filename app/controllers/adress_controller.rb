class AdressController < ApplicationController
  # GET - List all Adresses
  def index
    @adresses = Adress.all

    respond_to do |format|
      format.json { render :json => @adresses }
    end
  end

  # GET - List one Adress
  def show
    @adress = Adress.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @adress }
    end
  end

  # def create
  #   @adress = Adress.new(adress_params)

  #   respond_to do |format|
  #     format.json { render :json => @adress }
  #   end
  # end

  private
    def adress_params
      params.require(:adress).permit(:zipcode, :state, :city, :street, :number)
    end
end
