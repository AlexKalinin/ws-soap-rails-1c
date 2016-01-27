class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_file
    puts request.inspect
    response.headers['Guid'] = SecureRandom.uuid
    send_file Rails.root.join('app', 'assets', 'images', 'testpicture.jpeg')
  end
end
