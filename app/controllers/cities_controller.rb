class CitiesController < ApplicationController
def show
  @city = City.find(params[:id])
  
  @gossip_of_the_city =Gossip.find_by_sql("select * from gossips where user_id in (select id from users where city_id= #{params[:id] })")
end
end