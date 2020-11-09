# inutile
# require 'pry-byebug'

# for HTTP request
require 'net/http'
require 'json'
require "open-uri"
require "nokogiri"

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
    @original_grid = params[:random_letters]

    # The word can’t be built out of the original grid
    # The word is valid according to the grid, but is not a valid English word
    # The word is valid according to the grid and is an English word

    url_check_word = "https://wagon-dictionary.herokuapp.com/#{@word}"
    # p url_check_word
    # url = URI.parse(url_check_word)
    # req = Net::HTTP::Get.new(url.to_s)
    # res = Net::HTTP.start(url.host, url.port) {|http|
    #   http.request(req)
    # }
    # puts res.body

    # html = open(url_check_word).read
    # # 1. Parse HTML
    # doc = Nokogiri::HTML(html, nil, "utf-8")
    # # 2. For the first five results
    # p doc

    result = open(url_check_word).read
    p result
    result_json = JSON.parse(result)
    p result_json
    p result_json["found"]

  end

  def generate_letters(number)
    charset = Array('A'..'Z')
    Array.new(number) { charset.sample }.join
  end

end
