class ResultsController < ApplicationController
  def index
    CreateResultsJob.perform_later
  end
end
