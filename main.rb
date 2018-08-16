require_relative '8ball'

@quitting = false

def display_initial_menu
  puts 'Type a question to get an answer or type QUIT to end the program:'
end

def display_in_game_menu
  puts 'Ask me another question?'
  puts 'QUIT to end the program or hit ENTER to continue.'
  choice = gets().strip.downcase
  if choice == "quit"
    @quitting = true
  end
end

def display_quit_screen
  puts 'Thanks for playing Magic 8 Ball!!!'
end

#Start of Main Program
display_initial_menu
ball = EightBall.new
until @quitting do
  ball.get_user_input
  display_in_game_menu
end
display_quit_screen
