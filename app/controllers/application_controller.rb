class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: 'hello, world(root)!!'
  end

  def hello_route
    render html: 'hello, world!!'
  end

end
