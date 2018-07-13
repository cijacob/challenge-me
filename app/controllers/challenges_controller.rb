class ChallengesController < ApplicationController
  
  
  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
  end 

  def destroy
  end

end
