class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = 'I dont hear you!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly quesiton, get dressed and go to work!'
    else
      @answer = '! dont care, get dressed and go tto work!'
    end
  end
end
