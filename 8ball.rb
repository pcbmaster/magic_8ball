#Have a constant array of default answers
#Have functions:
#   *add_answers
#   *reset_answers
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
