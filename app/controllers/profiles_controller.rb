class ProfilesController < ApplicationController


  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update

  end

  def stats

  end

end
