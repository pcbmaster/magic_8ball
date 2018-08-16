#Have a constant array of default answers

#Copies in answers from Contant array, and works as a container to accept new questions/answers


#####Have methods:
#   *print_menu
#   *add_answers
#   *print_answers
#should getting the user's question be part of this class?

class EightBall
  def add_answers
    puts 'Please enter a NEW answer to be used.'
    @added_answer = gets.stip
  end
  
  #   *reset_answers
  def reset_answers
    puts 'Are you sure you would like to reset the answer bank? (y/n)'
    @reset_answer_confirm = gets.stip
  end
end
