class Push < ActiveRecord::Base
  validates_presence_of :message, :ptype
  after_create :send_push

  private
    def send_push
      PushNotification.send Device.map(&:device_id), {message: message, ptype: ptype}
    end
end
