require 'pry'

class Application
  @@items = []

  def call(env)

    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.match(/items/)
      item_name = req.path.split(/items/).last

      @@items.each do |item|
        item.name == item_name ? resp.write "#{item.price}" : next
      end
        {|item| item.name == item_name}


    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end

end
