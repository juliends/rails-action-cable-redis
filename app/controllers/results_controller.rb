class ResultsController < ApplicationController
  def index
    @channel_rand = [1,2,3].sample
    CreateResultsJob.perform_later(@channel_rand)
  end
end
