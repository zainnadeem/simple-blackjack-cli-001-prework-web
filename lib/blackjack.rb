def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(int)
  puts "Your cards add up to #{int}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(int)
puts "Sorry, you hit #{int}. Thanks for playing!"  
# code #end_game here
end

def initial_round
card_total = deal_card + deal_card
display_card_total(card_total)
return card_total
end


 def hit?(answer)
prompt_user
choice = get_user_input
if choice == "h"
answer += deal_card
return answer
else if choice == "s"
return answer
else 
  return invalid_command
end
end 
  # code hit? here
end



def invalid_command
   "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21 do
  x = hit?(x)
  display_card_total(x)
  end
    end_game(x)
end
  # code runner here

