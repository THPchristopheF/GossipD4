class GossipsController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    params[:gossip_array] = Gossip.all
  end
  def new
  end

  def show
    @gossip=Gossip.find(params[:id])
  end

  def create
    puts "=" * 80
    puts "ceci est le contenu de params :"
    puts params
    puts "=" * 80
    
    @newgossip=Gossip.new(title: params[:gossip_title], content: params[:gossip_text], user_id: 1)
    pp @newgossip
    if @newgossip.save
    redirect_to action: "index"

    else 
      render :new
    end 
  end
  def destroy
    puts "=" * 80
    puts "ceci est le contenu de params pour la destruction :"
    PP params
    puts "=" * 80
    @gossip=Gossip.find(params[:id])
     @gossip.destroy
      redirect_to action: "index", notice: 'Success with deletion'

   # else
    #  redirect_to action: "show", notice: 'Faillure with deletion', :id => params[:id]
   # end
  end




end
