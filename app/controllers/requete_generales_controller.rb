class RequeteGeneralesController < ApplicationController
   def new
  	@request = RequeteGenerale.new
    @meta_description = "Nous disposons de menageres et de nounous formees, qualifiees et experimentees alors appellez nous au 683867665 pour un service rapide"
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
      @meta_description = "Nous disposons de menageres et de nounous formees, qualifiees et experimentees. Nous reviendrons vers vous dans de bref delais"
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
