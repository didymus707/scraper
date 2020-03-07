require 'httparty'
require 'open-uri'
require 'nokogiri'
require 'pry'

# page = HTTParty.get('https://newyork.craigslist.org/search/pet')
# parse_page = Nokogiri::HTML(page)

# doc = Nokogiri::HTML.parse(open("https://newyork.craigslist.org/search/pet/"))

# link = 'https://www.aliexpress.com/category/200000668/shirts.html?spm=a2g0o.tm66085.102.6.47fd5f5bIPRwjf'

link = 'https://www.aliexpress.com/'

# link = 'https://newyork.craigslist.org/search/pet'
page = Nokogiri::HTML.parse(open(link))


Pry.start(binding)

# class Scraper
#   attr_accessor :link

#   def initialize(link)
#     @link = link
#     @doc = Nokogiri::HTML(open(@link))
#   end
#   @doc.css()

# end