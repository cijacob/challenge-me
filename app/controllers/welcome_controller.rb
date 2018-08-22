class WelcomeController < ApplicationController
  include ChallengesHelper

  def index
    @challenges = Challenge.all
  end
  def about
  end
  def follow
  end
  def partner
  end 
  def contact
  end 
end
