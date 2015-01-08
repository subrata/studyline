class ClientsController < ApplicationController
  
  
  def show
    @client = Client.find(params[:id])
  end
   
  def new_cregistration
    @client = Client.new
  end
  
  def new_mregistration
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])      
    if @client.save        
      UserMailer.client_regis_email(@client).deliver
      redirect_to client_path(@client), notice: 'Data has been successfully created.'        
    else
      if @client.registration_type == 'client'
        render action: "new_cregistration" 
      else
        render action: "new_mregistration" 
      end        
    end

  end
  def edit
    
  end
  
  
end
