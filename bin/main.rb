require './lib/scraper'

scraper = Scraper.new
program = scraper.course

program.each_with_index do |(key, value), idx|
  puts "#{idx + 1}. #{key}: \nContents covered are: => #{value}"
end
