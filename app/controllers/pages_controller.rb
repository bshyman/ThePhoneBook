class PagesController < ApplicationController
  def contact_me
    form_params = {
        email: params[:email],
        name:  params[:name],
        msg:   params[:body]
    }
    AlertMailer.contact_me(form_params).deliver
    redirect_to pages_about_path, notice: 'Message sent. Thank you!'
  end
  
  def about
  end
  
  def landing
  end
end
