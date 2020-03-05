require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :link

  def initialize(link)
    @link = link
    @page = open(@link)
    @parse_page = Nokogiri::HTML(@page)
  end
end