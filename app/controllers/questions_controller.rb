class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    standardresp = 'get dressed and go to work'

    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = "Silly question, #{standardresp}"
    else
      @answer = "I don't care, #{standardresp}"
    end
  end
end
