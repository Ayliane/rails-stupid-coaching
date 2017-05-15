class CoachingController < ApplicationController

  def answer
    @question = params[:query]
  end

  def ask
  end
end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == your_message.upcase && your_message.include?("%3F")
    "I can feel your motivation! Silly question, get dressed and go to work!"
  elsif your_message.include?("I am going to work right now!") || your_message.include?("I AM GOING TO WORK RIGHT NOW!")
    ""
  elsif your_message == your_message.upcase
    "I can feel your motivation! I don't care, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end
