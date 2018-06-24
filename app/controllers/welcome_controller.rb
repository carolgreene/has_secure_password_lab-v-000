class WelcomeController < ApplicationController
  before_action :require_log_in

  def home
  end
end 
