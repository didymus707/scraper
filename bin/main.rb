require './lib/scraper'

scraper = Scraper.new
program = scraper.course
keys = program.keys

program.each_with_index do |(course, prerequisites), index|
  puts "#{index + 1}. #{course}: \nContents covered are => #{prerequisites}"
end

puts "\nSelect the number of the course you want to open up"
answer = gets.to_i
puts "\n #{program[keys[answer - 1]].join(',')}"
