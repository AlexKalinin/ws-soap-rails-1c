class OnesSoapController < ApplicationController
  soap_service namespace: 'urn:WashOut'

  soap_action 'testNumbers',
              :args   => :integer,
              :return => :string
  def testNumbers
        render :soap => params[:value].to_s
  end

  soap_action 'testText',
              :args   => :string,
              :return => :string
  def testText
    render :soap => params[:value]
  end

  def testObjects
  end

  def testFiles
  end
end
