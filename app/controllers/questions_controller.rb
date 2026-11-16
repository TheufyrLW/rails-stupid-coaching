class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @question = ""
    @answer = ""
    @motivation = ""
    if params[:question]
      @question = params[:question]
      if @question == "I am going to work right now!"
        @answer = ""
      elsif @question.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      @motivation= "I can feel your motivation!" if @question == @question.upcase && !@answer.empty?
    end
  end
end
