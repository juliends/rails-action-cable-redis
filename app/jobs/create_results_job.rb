class CreateResultsJob < ApplicationJob
  queue_as :default

  def perform
    10.times do 
      sleep (0..2).to_a.sample
      r = Result.new(title: "Hello", content: "It's me <3")
      ActionCable.server.broadcast 'results', message: "<li>#{r.title} | #{r.content}</li>"
    end
  end
end
