# frozen_string_literal: true

require_relative "./capture"
require "json"

class Catcher < Sinatra::Base
  post "/receive/:service" do
    capture = Capture.create(
      service: params[:service],
      user_agent: headers["User-Agent"],
      source_ip: request.ip,
      headers: JSON.dump(headers),
      body: request.body.read
    )
    capture.inspect
  end
end