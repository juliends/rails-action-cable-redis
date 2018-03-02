class ResultNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "results-#{params[:id]}"
    p params
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
