class UsersController < ApplicationController
def show

  puts "="*80
  author_id=params[:id] 
  @user=User.find(author_id)
  puts "contenu de params : #{params}"
  pp User.find(author_id)
  puts "="*80


end
end