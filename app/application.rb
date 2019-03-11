class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(1..24)

    resp.write "#{time}\n"

    if time > 13
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
