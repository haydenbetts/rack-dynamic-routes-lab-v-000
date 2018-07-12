require 'pry'

class Application
  @@items = []

  # first,
  def call(env)
    # create a rack response
    # and a rack request
    binding.pry

    req = Rack::Request.new(env)
    resp = Rack::Response.new

  end

# app should accept /items/<item NAME> route

end
