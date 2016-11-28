class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  require 'will_paginate/array'

  private
	# Confirms a logged-in user.
	def logged_in_user
	  unless logged_in?
	    store_location
	    flash[:danger] = "Please log in."
	    redirect_to login_url
	  end
	end
  	# Redirects to stored location (or to the default)
	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end
  
end
