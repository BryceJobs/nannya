class JobPropositionsController < ApplicationController
  def index
     @jobs = JobProposition.last(5)
     @meta_description = "Vous recherchez une menagere, nounou? Alors postez votre offre? Vous etes une menagere a la recherche d'un boulot? Enregistrez vous pour postuler."
  end

  def new
     @job = JobProposition.new
     @meta_description = "A la recherche d'une menagere ou une nounou? postez votre besoin et nous reviendrons vers vous dans de bref delais. Phone:+237 683867665"
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
      @meta_description = "Merci de faire appel a nous. Nous disposons de menageres et de nounous formees, qualifiees et experimentees alors restez confiant. Phone:+237 683867665"
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
