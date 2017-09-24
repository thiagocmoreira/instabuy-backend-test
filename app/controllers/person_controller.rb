class PersonController < ApplicationController
  # GET All People
  def index
    @people = Person.all

    respond_to do |format|
      format.json { render :json => @people }
    end
  end

end
