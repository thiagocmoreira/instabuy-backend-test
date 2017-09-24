class AdressController < ApplicationController
  # GET All Adresses
  def index
    @adresses = Adress.all

    respond_to do |format|
      format.json { render :json => @adresses }
    end
  end
end
