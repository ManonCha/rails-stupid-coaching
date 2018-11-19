class QuestionsController < ApplicationController
  ANSWERS = ['Great!', 'Silly question, get dressed and go to work!', 'I dont care, get dressed and go to work!'].freeze

  def ask
  end

  def answer
    @question = params[:q]
    if @question == 'I am going to work'
      @answer = ANSWERS[0]
    elsif @question.split('').include?('?')
      @answer = ANSWERS[1]
    else
      @answer = ANSWERS[2]
    end
  end
end
