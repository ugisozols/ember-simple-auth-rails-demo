class SessionController < ApplicationController
  def create
    user = User.find_by(:name => params[:username],
                        :password => params[:password])

    if user
      user.token = SecureRandom.hex
      user.save!
      render json: { :access_token => user.token, :token_type => "bearer" }
    else
      head 401
    end
  end
end
