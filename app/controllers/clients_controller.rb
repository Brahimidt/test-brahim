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
        ClientsMailer.registered(@client.email).deliver
        format.html { redirect_to '/', notice: "Client was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def accepted!(cId)
    @client = Client.find(cId)
    @client.confirmed
  end

  #def 
   # @clients = Client.find(params[:id])
  #end q

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
