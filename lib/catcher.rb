# frozen_string_literal: true

require_relative "./capture"
require "json"

class Catcher < Sinatra::Base
  post "/receive/:service" do
    Capture.create!(
      method: "POST",
      service: params[:service],
      user_agent: headers["User-Agent"],
      source_ip: request.ip,
      headers: JSON.dump(headers),
      body: request.body.read
    )

    ""
  end

  put "/receive/:service" do
    Capture.create!(
      method: "PUT",
      service: params[:service],
      user_agent: headers["User-Agent"],
      source_ip: request.ip,
      headers: JSON.dump(headers),
      body: request.body.read
    )

    ""
  end
end
