class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
  def contact_send
    contact = params[:contact_mail]
    ContactMailer.with(email: contact[:email], lastname: contact[:lastname], firstname: contact[:firstname], tel: contact[:tel], message: contact[:message]).new_contact_email.deliver_later
  end
end
