class SessionsController < ApplicationController

  def new
    user = User.find_or_create_by(username: params[:username])
    render json: user, include: [:games]
  end
end
