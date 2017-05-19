class RequeteCandidatsController < ApplicationController
  def new
  	@request = RequeteCandidat.new
  end

  def create
  	@request = RequeteCandidat.new(request_params)
    session[:previous_path_valid] = true
  	if @request.save
  		redirect_to candidate_request_confirmation_path
  	else
  		render 'new'
  	end
  end

  def confirm
     if session[:previous_path_valid]
      session[:previous_path_valid] = false
      render 'confirm'   
    else
      redirect_to new_candidate_request_path
    end
  end

  private

  def request_params
  	params[:requete_candidat].permit(:nom, :prenom, :ville, :quartier, :telephone, :email, :experience)
  end
end
