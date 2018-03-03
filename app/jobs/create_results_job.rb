class CreateResultsJob < ApplicationJob
  queue_as :default

  def perform(id)
    10.times do 
      sleep (0..2).to_a.sample
      @result = Result.new(title: "Hello", content: "It's me <3")
      ActionCable.server.broadcast(
        "results-#{id}",
        message: ApplicationController.renderer.render(partial: "results/card", locals: { result: @result })
      )
    end
  end
end
