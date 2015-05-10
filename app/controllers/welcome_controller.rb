class WelcomeController < ApplicationController

  def shot_time
    puts 'does this work?'
    # Grab Device Token
    APNS.send_notification('754047bb1b148acb74f35d0710f7524e5df04b981e23d93849e747215ec736fa', 'Its Shot Time!' )
  end

  def take_shot
    APNS.send_notification(params[:device_token], "It's time to take a shot!")
  end
end
