class ChallengesController < ApplicationController
  
  
  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.save
    redirect_to @challenge
  end 

  def show
  end 

  def destroy
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :description, :start_date, :end_date)
  end 

end
