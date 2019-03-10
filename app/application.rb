class Application
  def call(env)
    resp = Rack::Response.new

    hours = Time.now.to_s.split(" ")[1].split(":")[0].to_i

    if hours > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
