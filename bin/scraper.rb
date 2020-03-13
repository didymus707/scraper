require './lib/scraper_logic'

scraper = Scraper.new
program = scraper.course
keys = program.keys

program.each_with_index do |(course, _), index|
  puts "#{index.next}. #{course}"
end


puts '+-' * 15
print "\nSelect the number of the course you want to open up: > "
answer = gets.to_i
puts '+-' * 15
puts
puts 'You chose %i: %s' % [answer, program.keys[answer - 1]]
puts 'Content covered in course:'
puts "\n #{program[keys[answer - 1]].join(',')}"