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

    if req.path.match(/items/)
      # handle
    else
      resp.write "Route not found"
      resp.status 404

  end

# app should accept /items/<item NAME> route

end
