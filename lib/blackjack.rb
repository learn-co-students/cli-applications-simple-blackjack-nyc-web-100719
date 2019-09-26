def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_numbers  = rand(1..11)
  random_numbers
end

def display_card_total(arg)
  puts "Your cards add up to #{arg}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  ipt = gets.chomp.to_s
end

def end_game(arg)
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  total = 0
  2.times do
  total += deal_card
end
display_card_total(total)
total
end

def hit?(arg)
   print prompt_user
  ipt = get_user_input
  if ipt =="h"
    arg+= deal_card 
  elsif ipt == "s"
  arg
  else
invalid_command
prompt_user
get_user_input
  end
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  arg = initial_round
  until arg > 21
  arg = hit?(arg)
  display_card_total(arg)
end
end_game(arg)
end
    
