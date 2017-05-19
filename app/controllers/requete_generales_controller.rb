class RequeteGeneralesController < ApplicationController
   def new
  	@request = RequeteGenerale.new
  end

  def create
  	@request = RequeteGenerale.new(request_params)
    session[:previous_path_valid] = true

  	if @request.save
  		redirect_to general_request_confirmation_path
  	else
  		render 'new'
  	end
  end

  def confirm
    if session[:previous_path_valid]
      session[:previous_path_valid] = false
      render 'confirm'   
    else
      redirect_to contact_path
    end
  end

  private

  def request_params
  	params[:requete_generale].permit(:nom, :prenom,  :telephone, :email, :sujet, :message)
  end
end
