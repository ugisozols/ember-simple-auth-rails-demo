class SessionController < ApplicationController
  def create
    user = User.find_by(:name => params[:username],
                        :password => params[:password])

    if user
      user.token = SecureRandom.hex
      user.save!
    end

    render json: { :access_token => user.token, :token_type => "bearer" }
  end
end
