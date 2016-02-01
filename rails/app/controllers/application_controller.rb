class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # def get_file
  #   puts request.inspect
  #   response.headers['Guid'] = SecureRandom.uuid
  #   send_file Rails.root.join('app', 'assets', 'images', 'testpicture.jpeg')
  # end
  #
  # def send_file
  #   #require 'debug'
  #   # puts params.inspect
  #   # puts 'Got param1: ' + params[:param1]
  #   # puts 'Got param2: ' + params[:param2]
  #   byebug
  #   uploaded_io = params[:file]
  #   store_path = Rails.root.join('public', uploaded_io.original_filename)
  #   File.open(store_path, 'wb') do |file|
  #      file.write(uploaded_io.read)
  #   end
  #   puts 'Saved file to: ' + store_path.to_s
  #   response.headers['Guid'] = SecureRandom.uuid
  #   render text: 'ok'
  # end
end
