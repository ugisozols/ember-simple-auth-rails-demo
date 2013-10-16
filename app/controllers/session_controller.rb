class SessionController < ApplicationController
  def create
    user = User.find_by(:name => session_params[:identification],
                        :password => session_params[:password])

    if user
      user.token = SecureRandom.hex
      user.save!
    end

    render json: { :session => { :authToken => user.token } }
  end

  def destroy
    request.authorization[/token=\"(.+)\"/]
    token = $1

    unless token.blank?
      user = User.find_by(:token => token)
      if user
        user.token = nil
        user.save!
      end
    end

    render :nothing => true
  end

  private

  def session_params
    params.require(:session).permit(:identification, :password)
  end
end
