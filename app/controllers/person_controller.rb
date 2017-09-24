class PersonController < ApplicationController
  # GET - List all People
  def index
    @people = Person.all

    respond_to do |format|
      format.json { render :json => @people }
    end
  end

  # GET - List one Person
  def show
    @person = Person.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @person }
    end
  end

  # POST - Create a Person
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: { status: 'Success', id: @person.id }, status: :ok
    else
      render json: { status: 'Error', message:'Person not saved!', data: @person.errors }, status: :unprocessable_entity
    end
  end

  private
    def person_params
      params.require(:person).permit(:name, :age, :cpf)
    end

end
