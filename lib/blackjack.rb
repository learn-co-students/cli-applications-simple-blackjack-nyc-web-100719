def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return (Random.rand(10) + 1)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  command = ""
  while command != "h" || "s"
  prompt_user
  command = get_user_input
    if command == "h"
      card_total += deal_card
      return card_total
    elsif command == "s"
      return card_total
    else
      invalid_command
    end
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
  sum = initial_round
  sum = hit?(sum)
  display_card_total(sum)
  if sum > 21
  end_game(sum)
  end
end
    
