class ResultNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "results"
    puts "connected!"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
