class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def shot_time_test
    APNS.send_notification('754047bb1b148acb74f35d0710f7524e5df04b981e23d93849e747215ec736fa', :alert => "It's beer time!", :sound => 'default')
    APNS.send_notification('87efab513ff67aa9fc79e7c39aa11c57b30c286432f9c6b042b02b6d36218868', :alert => "It's beer time!", :sound => 'default')
    render nothing: true
  end

  def shot_time
    sleep(4)
    APNS.send_notification(params[:device_token], :alert => "It's time to take a shot!", :sound => 'default')
    render nothing: true
  end

  def beer_time
    sleep(4)
    APNS.send_notification(params[:device_token], :alert => "It's beer time!", :sound => 'default')
    render nothing: true
  end
end
