class WelcomeController < ApplicationController
  def show
    @first_name = params[:first_name]
    puts "="*80
    puts "val pour : #{params}"
    puts "val pour la clé [first_name] : #{params["first_name"]}"
    puts "="*80
  end
end
