require 'pry'

class Application
  @@items = []

  # first,
  def call(env)
    # create a rack response
    # and a rack request
    req = Rack::Request.new
    resp = Rack::Response.new
    binding.pry
  end

# app should accept /items/<item NAME> route

end
