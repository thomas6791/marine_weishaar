class ContactMailer < ApplicationMailer
    default from: 'contact@marine-weishaar.com'
    def new_contact_email
        @email = params[:email]
        @lastname = params[:lastname]
        @firstname = params[:firstname]
        @message = params[:message]
        mail(to: "mw@marine-weishaar.com",reply_to: @email, subject: "Nouveau message de Marine Weishaar Immobilier")
    end
end
