class JobPropositionsController < ApplicationController
  def index
   
  end

  def new
     @job = JobProposition.new
  end

  def create
    session[:previous_path_valid] = true
    @job = JobProposition.new(job_params)
    if @job.save
      redirect_to job_proposition_confirmation_path
    else
      render 'new', danger: "Verifier le formulaire et re-essayer"
    end
  end

  def show
  end

  def confirm
    if session[:previous_path_valid]
      session[:previous_path_valid] = false
      render 'confirm'   
    else
      redirect_to new_job_proposition_path
    end
  end

  def destroy
  end

  private

  def job_params  
    params[:job_proposition].permit(:title, :description, :ville, :quartier, :duree_contrat, :status_emmenagement,:principale_taches,
      :salaire, :jour_travail, :heure_travail_debut, :heure_travail_fin)
  end
end
