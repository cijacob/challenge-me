class ChallengesController < ApplicationController
  
  
  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.create!(challenge_params)
    redirect_to challenges_path
  end 

  def show
    @challenge = Challenge.find(params[:id])
  end 

  def destroy
  end

  private

  def challenge_params
    params.require(:challenge).permit(:name, :description, :start_date, :end_date, :category_id)
  end 

end
