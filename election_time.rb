#Author: Christabel Escarez
#Last updated: August 17, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  2, "Election Time"

#MAIN
puts "Please ten voters and vote for the top cereal."
nominees = ["Special K", "Lucky Charms", "Cinnamon Toast Crunch", "Bacon", "Write-in Vote"]
letter = '@'
nominees.each do |cereal|
  puts "#{letter.next}: #{cereal}"
end

voter_num = 0
A_count = B_count = C_count = D_count = 0
while voter_num < 10
  voter_num
  print "Voter ##{voter_num}: "
  input_vote = gets.chomp.upcase
  until (('A'..'E').includes?(input_vote))  
    puts "Invalid input. Please enter a valid selection."
    input_vote = gets.chomp.upcase
  end
  case input_vote
  when 'A'
    A_count++
  when 'B'
    B_count++
  when 'C'
    C_count++
  when 'D'
    D_count++
  when 'E'
    E_count++
  end
end

puts "Final tally:/nA: #{A_count}/nB: #{B_count}/nC: #{C_count}/nD: #{D_count}"
