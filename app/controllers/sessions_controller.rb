class SessionsController < ApplicationController
	def new
		
	end

	def create
		if !params[:name].blank?
			session[:name] = params[:name]
			redirect_to show_secret_path
		else
			redirect_to login_page_path
		end
	end

	def destroy
		session.clear
		redirect_to login_page_path
	end
end