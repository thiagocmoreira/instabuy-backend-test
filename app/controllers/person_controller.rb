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
      render json: { status: 'POST Success', id: @person.id }, status: :ok
    else
      render json: { status: 'Error', message:'Error registering a new person', person: @person.errors }, status: :unprocessable_entity
    end
  end

  # PUT - Update one Person using the body
  def update_by_body
    @person = Person.find(person_update_params[:id])

    if @person.update_attributes(person_update_params)
      render json: { status: 'PUT Success' }, status: :ok
    else
      render json: { status: 'Error', message:'Error updating person', person: @person.errors }, status: :unprocessable_entity
    end
  end

  # DELETE - Destroy one Person register using the body
  def destroy_by_body
    @person = Person.find(person_delete_param[:id])
    id = @person.id

    if @person.destroy
      render json: { status: 'DELETE Success', id: id }, status: :ok
    else
      render json: { status: 'Error', message:'Error deleting person', person: @person.errors }, status: :unprocessable_entity
    end
  end

  # Encapsulated params
  private
    def person_params
      params.permit(:name, :age, :cpf)
    end

    def person_update_params
      params.permit(:id, :age)
    end

    def person_delete_param
      params.permit(:id)
    end
end
