class ProfilesController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @profile = current_user.profile

  end

  def update
  end

end
