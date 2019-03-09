class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    time = time.strftime('%H:%M')

    if time[0..1].to_i > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!" 
    end

    resp.finish
  end

end
