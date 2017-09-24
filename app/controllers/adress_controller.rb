class AdressController < ApplicationController
  # GET - List all Adresses
  def index
    @addresses = Adress.all

    respond_to do |format|
      format.json { render :json => @addresses }
    end
  end

  # GET - List one Address
  def show
    @address = Adress.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @address }
    end
  end

  # GET - List all Addresses of one person
  def show_by_body
    @addresses = Adress.all

    if params[:person_id]
      @addresses = Adress.search(params[:person_id]).order('created_at DESC')
      respond_to do |format|
        format.json { render :json => @addresses }
      end
    else
      render json: { status: 'Error', message: 'Error: no address belongs to this id person', errors: @address.errors }, status: :unprocessable_entity
    end

  end

  # POST - Create a new Address
  def create
    @address = Adress.new(address_params)

    if @address.save
      render json: { status: 'POST Success', id: @address.id }, status: :ok
    else
      render json: { status: 'Error', message: 'Error to register a new Address', errors: @address.errors }, status: :unprocessable_entity
    end
  end

  # PUT - Update one Address using the body
  def update_by_body
    @address = Adress.find(address_update_params[:id])

    if @address.update_attributes(address_update_params)
      render json: { status: 'PUT Success' }, status: :ok
    else
      render json: { status: 'Error', message:'Error to update a Address', errors: @address.errors }, status: :unprocessable_entity
    end
  end

  # DELETE - Destroy one Address register using the body
  def destroy_by_body
    @address = Adress.find(address_delete_param[:id])
    id = @paddressid

    if @address.destroy
      render json: { status: 'DELETE Success' }, status: :ok
    else
      render json: { status: 'Error', message:'Error to delete a Address', errors: @address.errors }, status: :unprocessable_entity
    end
  end

  # DELETE - Destroy one Address register using the query
  def destroy
    @address = Adress.find(params[:id])
    id = @address.id

    if @address.destroy
      render json: { status: 'DELETE Success' }, status: :ok
    else
      render json: { status: 'Error', message:'Error delete a Adress', errors: @address.errors }, status: :unprocessable_entity
    end
  end

  # Encapsulated params
  private
    def address_params
      params.permit(:zipcode, :state, :city, :street, :number, :person_id)
    end
  
  private
    def address_update_params
      params.permit(:id, :city)
    end

  private
    def address_delete_param
      params.permit(:id)
    end

    private
    def address_find_param
      params.permit(:person_id)
    end
end
