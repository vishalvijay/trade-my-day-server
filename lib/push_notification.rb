class PushNotification
  require 'gcm'

  def self.send ids, data
    if ids.length > 0
      gcm = GCM.new(Settings.gcm_api_key)
      ids.each_slice(1000).to_a.each do |s_ids|
        gcm.send_notification(s_ids, {data: data})
      end
    end
  end
end