require './lib/scraper'

scraper = Scraper.new
program = scraper.course

program.each_with_index do |(key, value), idx|
  puts "#{idx + 1}. #{key}: \nContents covered are => #{value}"
end

puts "\nSelect the course you want to open up by typing in the name"
answer = gets.chomp.split.map(&:capitalize).join(' ')
puts answer
puts "\n #{program.fetch(answer).join(',')}"
