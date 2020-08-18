#Author: Christabel Escarez
#Last updated: August 17, 2020
#Ada Developer's Academy C14
#Ada Build: Section 4 Assessment: question  2, "Election Time"


#MAIN
puts "Please gather at least ten voters and vote for the top cereal. The current nominees are: "
nominees = [["Special K", 0, 'A'], ["Lucky Charms", 0, 'B'], ["Cinnamon Toast Crunch", 0, 'C'], ["Bacon", 0, 'D'], ["Write-in Vote", 0, 'E']]

last_letter = 'A'
nominees.each do |cereal_array|
  puts "#{cereal_array[2]}: #{cereal_array[0]}"
  last_letter = cereal_array[2]
end

voter_num = 0
input_vote = ''
puts "Enter '0' at any time to end voting and proceed to vote tallying."
until input_vote == '0' && voter_num >= 10
  voter_num += 1
  print "Selection for Voter ##{voter_num}: "
  input_vote = gets.chomp.upcase
  until ((('A'..last_letter).include?(input_vote)) || (input_vote == '0'))  
    print "Invalid input. Please enter a valid selection for Voter ##{voter_num}: "
    input_vote = gets.chomp.upcase
  end
  if input_vote == '0' && voter_num < 10
    puts "Please enter at least ten votes before tallying votes."
  end
  nominees.each do |cereal_array|
    if cereal_array[2] == input_vote
      if cereal_array[0] == "Write-in Vote"
        #copy 'write in' selection to last array location; .dup used so value is copied, not reference.
        nominees[nominees.index(cereal_array) + 1] = nominees[nominees.index(cereal_array)].dup

        #write new input into nominee[-1] index
        puts "Please input your write-in nominee: "
        nominees[-1][0] = gets.chomp
        nominees[-1][1] = 0 
        nominees[-1][2] = last_letter.dup 
        # nominees[nominees.index(cereal_array)][0] = gets.chomp
        # nominees[nominees.index(cereal_array)][1] = 0 
        # nominees[nominees.index(cereal_array)][2] = last_letter.dup 
        last_letter.next!

        puts "A new write-in nominee has been added. The current nominees for top cereal are: "
        nominees.each do |cereal_array|
          puts "#{cereal_array[2]}: #{cereal_array[0]}"
        end
        
      else
        cereal_array[1] += 1
      end
    end
  end
end

winning_cereal = ""
highest_vote_count = multiple_winners = 0
puts "The final tally:"
nominees.each do |cereal_array|
  if cereal_array[0] == "Write-in Vote"
    break
  else
    if cereal_array[1] == 1
      puts "#{cereal_array[0]} - #{cereal_array[1]} vote"
    else
      puts "#{cereal_array[0]} - #{cereal_array[1]} votes"
    end
    if cereal_array[1] > highest_vote_count
      highest_vote_count = cereal_array[1]
      winning_cereal = cereal_array[0] 
    elsif cereal_array[1].to_i == highest_vote_count
      winning_cereal += " and " + cereal_array[0] 
      multiple_winners = true
    end
  end
end

if multiple_winners
  puts "The winning cereals are #{winning_cereal}!"
else
  puts "The winning cereal is #{winning_cereal}!"
end
  
  

# nominees = [{selection_id => 'A', "Special K" => [0, 'A']}, {selection_id => 'B', "Lucky Charms" => 0}, {selection_ID => 'C', "Cinnamon Toast Crunch" => 0}, {selection_id => 'D', "Bacon" => 0}, {selection_id => 'E', "Write-in Vote" => 0}]

# nominees = [{"Special K":  [0]}, {"Lucky Charms": [0]}, {"Cinnamon Toast Crunch": [0]}, {"Bacon": [0]}, {"Write-in Vote": [0]}]
  # selection_index = 0
  # i = 0
  # ('A'..letter).each do |current_letter|
  #   if current_letter == input_vote
  #     selection_index = i
  #   end
  #   i++
  # end
  # nominees[selection_index] += 1
# letter = 'A'
# nominees.each do |cereal_array|
#   # puts cereal_array[0] + cereal_array[1] + cereal_array[2] #################
#   puts cereal_array[0]
#   cereal_array.each do |cereal_detail|
#     puts "#{letter}: #{cereal_detail}"
#     cereal_detail << letter
#     puts cereal_detail[0] + cereal_detail[1] + cereal_detail[2] #################
#     letter.next!
#   end
# end

