#Have a constant array of default answers

#Copies in answers from Contant array, and works as a container to accept new questions/answers


#####Have methods:
#   *print_menu
#   *add_answers
#   *print_answers
#should getting the user's question be part of this class?

##########################
# Instance Variables
# @num_answers - Stores the total number of answers (size of @answers)
# @answers - Array of all answer strings
#
##########################

class EightBall

  ANSWERS_DEFAULT = ["Yes", "No", "Maybe", "Go ask your Mother", "Answer hazy; ask again later", "#YOLO", "How would I know that?"] 

  def initialize
    @answers = ANSWERS_DEFAULT
    @num_answers = @answers.length
  end

  def add_answers
    puts 'Please enter a NEW answer to be used.'
    @added_answer = gets.stip
  end
  

  def reset_answers
    puts 'Are you sure you would like to reset the answer bank? (y/n)'
    @reset_answer_confirm = gets.stip
  end
  
  def get_user_input
    puts "Ask the mighty 8-Ball a question, mortal!"
    user_question = gets.strip()
    if user_question == "add_answers"
      add_answers
    elsif user_question == "reset_answers"
      reset_answers
    elsif user_question == "print_answers"
      print_answers
    else
      selected_answer = rand(@num_answers-1)
      puts("My answer is as follows mortal; %s" % @answers[selected_answer])
    end
  end
end
