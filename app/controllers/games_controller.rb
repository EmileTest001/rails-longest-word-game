# require 'pry-byebug'

class GamesController < ApplicationController
  def new
    # 1. créer cette méthode
    # 2. puis créer dans config/routes.rb la méthode get

    #  générer 10 lettres
    @letters = generate_letters(10)
  end

  def score
    # 1. créer cette méthode
    # 2. puis créer dans config/routes.rb la méthode get

    #  for debuging in console, type params to inspect what got sent
    # raise
    @word = params[:word]
    @letters_pass = params[:random_letters]
  end

  def generate_letters(number)
    charset = Array('A'..'Z')
    Array.new(number) { charset.sample }.join
  end

end
