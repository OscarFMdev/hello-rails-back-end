class Api::V1::MessagesController < ApplicationController
  def random_greeting
    greeting = Message.order("RANDOM()").first
    render json: { greeting: greeting.body }
  end
end
