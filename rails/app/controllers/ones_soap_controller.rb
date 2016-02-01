class OnesSoapController < ApplicationController
  soap_service namespace: 'http://alexkalinin.pro'

  soap_action 'b64_file_upload',
              :args => {b64_file: :string},
              :return => :string,
              :to     => :b64_file_upload
  def b64_file_upload
    #byebug
    decode_base64_content = Base64.decode64(params['b64_file'])
    store_path = Rails.root.join('public', 'testpicture.jpeg')
    File.open(store_path, 'wb') do |f|
      f.write(decode_base64_content)
    end
    render :soap => 'somesting и какая-то строка на кириллице'
  end

  soap_action 'b64_file_download', args: nil, :return => :string
  def b64_file_download
    # byebug
    store_path = Rails.root.join('public', 'testpicture.jpeg')
    content = File.binread(store_path)
    render :soap => Base64.encode64(content)
  end
end
