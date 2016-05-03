class WelcomeController < ApplicationController
  def index
  	@notes = Note.where(user_id: current_user).order("created_at DESC")
  end
end
