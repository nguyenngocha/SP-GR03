class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  require 'will_paginate/array'

  	# Redirects to stored location (or to the default)
	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end
  
end
