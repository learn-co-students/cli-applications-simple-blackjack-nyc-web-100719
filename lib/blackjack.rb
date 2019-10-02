def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  card_total = num
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  card_total = num
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum = sum + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(num)
  prompt_user
  get_user_input
  current_card_total = num
  if get_user_input == 'h'
    card = deal_card
    current_card_total += card
  elsif get_user_input == 's'
    current_card_total
  else get_user_input != 'h' || get_user_input != 's'
    invalid_command
    prompt_user
  end 
  display_card_total(current_card_total)
end

hit?(9)

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  hit?
  get_user_input
  if get_user_input == 's'
    prompt_user
  else get_user_input == 'h'
    deal_card
    display_card_total
  end
  if X > 21
    end_game
  end
end
    
