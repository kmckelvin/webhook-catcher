# frozen_string_literal: true

require "sinatra"
require "sinatra/activerecord"

set :database, ENV["DATABASE_URL"] || "postgres://postgres:secret@127.0.0.1/catcher"
