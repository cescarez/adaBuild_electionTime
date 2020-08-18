#Author: Christabel Escarez
#Last updated: August 17, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  2, "Election Time"
#future implementation: add letter into hash?

#MAIN
puts "Please ten voters and vote for the top cereal."
nominees = [["Special K"], ["Lucky Charms"], ["Cinnamon Toast Crunch"], ["Bacon"], ["Write-in Vote"]]

letter = 'A'
nominees.each do |cereal_index|
  cereal_index.each do |cereal_name|
    puts "#{letter}: #{cereal_name}"
    # nominees[cereal][cereal_name].index(1) << letter
    cereal_name << 0
    cereal_name << letter
  end
  letter.next!
end

voter_num = 0
while voter_num < 10
  voter_num += 1
  print "Voter ##{voter_num}: "
  input_vote = gets.chomp.upcase
  until (('A'..letter).include?(input_vote))  
    puts "Invalid input. Please enter a valid selection."
    input_vote = gets.chomp.upcase
  end
  
  nominees.each do |cereal|
    cereal.each do |characteristic, value|
      if characteristic.has_value?(input_vote)
        nominees[characteristic].next!.value +=1
      end
    end
  end


end
  # selection_index = 0
  # i = 0
  # ('A'..letter).each do |current_letter|
  #   if current_letter == input_vote
  #     selection_index = i
  #   end
  #   i++
  # end
  # nominees[selection_index] += 1
  
  
puts "Final tally:/nA: #{A_count}/nB: #{B_count}/nC: #{C_count}/nD: #{D_count}"



# nominees = [{selection_id => 'A', "Special K" => [0, 'A']}, {selection_id => 'B', "Lucky Charms" => 0}, {selection_ID => 'C', "Cinnamon Toast Crunch" => 0}, {selection_id => 'D', "Bacon" => 0}, {selection_id => 'E', "Write-in Vote" => 0}]

# nominees = [{"Special K":  [0]}, {"Lucky Charms": [0]}, {"Cinnamon Toast Crunch": [0]}, {"Bacon": [0]}, {"Write-in Vote": [0]}]