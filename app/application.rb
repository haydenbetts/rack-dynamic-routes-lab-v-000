require 'pry'

class Application
  @@items = []

  # first,
  def call(env)

    binding.pry

    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.match(/items/)
      # handle
    else
      resp.write "Route not found"
      resp.status = 404
  end

end
