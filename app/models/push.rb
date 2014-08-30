class Push < ActiveRecord::Base
  validates_presence_of :title, :message, :ptype
  after_create :send_push

  private
    def send_push
      PushNotification.send Device.all.map(&:device_id), {title: title, message: message, type: ptype}
    end
end
