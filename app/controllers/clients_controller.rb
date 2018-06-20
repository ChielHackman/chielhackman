class ClientsController < ApplicationController
  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "Thanks for signing up!"
    else
      flash[:notice] = "Something went wrong, please try it again."
    end
    redirect_to root_path
  end

  private

  def client_params
    params.require(:client).permit(:email)
  end
end
