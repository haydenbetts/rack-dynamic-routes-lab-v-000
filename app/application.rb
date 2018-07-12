require 'pry'

class Application
  @@items = []

  def call(env)

    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.match(/items/)
      item_name = req.path.split(/items/).last

      if item = @@items.detect {|item| item.name == item_name}
        resp.write "#{item.price}"
      end

    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
