require 'pry'

class Application
  @@items = []

  def call(env)

    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.match(/items/)
      req.path.split(/items/).last
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
