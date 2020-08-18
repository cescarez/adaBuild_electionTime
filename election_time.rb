#Author: Christabel Escarez
#Last updated: August 17, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  2, "Election Time"

#MAIN
puts "Please ten voters and vote for the top cereal."
nominees = [{"Special K" => 0}, {"Lucky Charms" => 0}, {"Cinnamon Toast Crunch" => 0}, {"Bacon" => 0}, {"Write-in Vote" => 0}]
letter = 'A'
# letter_array = Array.new
nominees.each do |cereal|
  cereal.each_key do |cereal_name|
    puts "#{letter}: #{cereal_name}"
  end
  letter.next
  puts letter
end

voter_num = 0
while voter_num < 10
  voter_num += 1
  print "Voter ##{voter_num}: "
  input_vote = gets.chomp.upcase
  until (('A'..letter).includes?(input_vote))  
    puts "Invalid input. Please enter a valid selection."
    input_vote = gets.chomp.upcase
  end
  # case input_vote
  # when 'A'
  #   A_count++
  # when 'B'
  #   B_count++
  # when 'C'
  #   C_count++
  # when 'D'
  #   D_count++
  # when 'E'
  #   E_count++
  # end
end

puts "Final tally:/nA: #{A_count}/nB: #{B_count}/nC: #{C_count}/nD: #{D_count}"
