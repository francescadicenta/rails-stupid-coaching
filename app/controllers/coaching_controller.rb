class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    # here you just need the script
    # @answers = RESTAURANTS.select {|r| r[:category] == @category }
    if @question[-1] == "?"
      @answer = "Silly question son!"
    elsif @question == "I am going to work"
      @answer = "Great, have a good day!"
    else @question[-1] != "?"
      @answer = "I don't care, you should go to work"
    end
    #because everything is passing through the answer !
  end

  def ask
  end
end
