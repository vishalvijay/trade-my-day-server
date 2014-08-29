class Api::V1::UserSessionController < Devise::SessionsController
  before_action :delete_device, only: [:destroy]

  private
    def delete_device
      current_api_user.devices.where(session_id: session.id).destroy_all if current_api_user
    end
end