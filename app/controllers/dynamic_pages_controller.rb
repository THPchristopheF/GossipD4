class DynamicPagesController < ApplicationController
  def gossip
    puts "="*80
    gossip_id=params[:id] 
    @gossip=Gossip.find(gossip_id)
    puts "contenu de params : #{params}"
    pp Gossip.find(gossip_id)
    puts "="*80
   end
  
   def profile
    puts "="*80
    profile_id=params[:id] 
    @profile=User.find(profile_id)
    puts "contenu de params : #{params}"
    pp User.find(profile_id)
    puts "="*80
   end

end
