require 'nokogiri'
require 'open-uri'

class Scraper
  attr_reader :link

  def initialize
    @link = 'https://www.udacity.com/school-of-programming'
    @page = Nokogiri::HTML(open(@link))
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

  scraper = Scraper.new
  program = scraper.course

  program.each_with_index do |(key, value), idx|
    puts "#{idx + 1}. #{key} => #{value}"
  end
end
