class GossipsController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    params[:gossip_array] = Gossip.all
  end
  def new
  end


  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
    
    @newgossip=Gossip.new(title: params[:gossip_title], content: params[:gossip_text], user_id: 1)
    pp @newgossip
    if @newgossip.save
      flash[:success] = "Ton gossip a bien été créé !"
      redirect_to action: "index"
      flash[:success] = "Ton gossip a bien été créé !"
    else 
      render :new
    end 
  end
end
