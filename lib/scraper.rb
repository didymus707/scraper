require 'nokogiri'
require 'httparty'

class Scraper
  attr_reader :link

  def initialize
    @link = HTTParty.get('https://www.udacity.com/school-of-programming')
    @page = Nokogiri::HTML(@link)
    @program = {}
  end

  def course
    headings.each do |element|
      element_key = element.text
      @program[element_key] = element.next.next_sibling.children[1].text.split(',')
    end
    @program
  end

  private

  def headings
    @page.css('.upcoming-section').css('.light')
  end
end
