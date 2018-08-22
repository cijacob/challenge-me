module ChallengesHelper
    def display
        @challenges = Challenge.all
    end 
end
