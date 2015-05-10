class WelcomeController < ApplicationController

  def shot_time_test
    puts 'does this work?'
    # Grab Device Token
    APNS.send_notification('754047bb1b148acb74f35d0710f7524e5df04b981e23d93849e747215ec736fa', "It's beer time!" )
  end

  def shot_time
    APNS.send_notification(params[:device_token], "It's time to take a shot!")
  end

  def beer_time
    APNS.send_notification(params[:device_token], "It's beer time!")
  end
end
