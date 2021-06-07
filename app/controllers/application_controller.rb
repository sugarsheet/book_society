class ApplicationController < ActionController::Base
  before_action :authenticate_user!

def navbar
 @user = current_user
end
end
