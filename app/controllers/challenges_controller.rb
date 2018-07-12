class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def new
  end
end
