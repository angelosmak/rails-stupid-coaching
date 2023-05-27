class PagesController < ApplicationController
  def ask
    
  end

  def answer
    @lastanswer = ["I am going to work", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @answer = nil
    # if @answer
    query = params[:question]
    if query
      if query == @lastanswer[0]
        @answer = "Great!"
      elsif query.end_with? "?"
        @answer = @lastanswer[1]
      else
        @answer = @lastanswer[2]
      end
    end
  end

  def home
  end

end
