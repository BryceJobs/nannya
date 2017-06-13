class PagesController < ApplicationController
  def home
  	@meta_description = "C'est enfin possible, une menagere ou nounou qualifiee pour votre domicile en moins de 48h dans les ville de Yaounde et Douala"
  end

  def contact
  	@meta_description = "Nous disposons de menageres et de nounous formees, qualifiees et experimentees alors appellez nous au 683867665 pour un service rapide"
  end
end
