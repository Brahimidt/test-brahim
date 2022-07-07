class ClientsController < ApplicationController

  # GET /clients/new
  def new
    @client = Client.new
  end


  # POST /clients or /clients.json
  def create
    @client = Client.new(client_params)
    respond_to do |format|
      if @client.save
        ClientsMailer.registered.deliver
        format.html { redirect_to '/', notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name, :email, :phoneNumber, :biography, :status)
    end
end
