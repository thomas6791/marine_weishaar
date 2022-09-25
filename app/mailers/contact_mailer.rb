class ContactMailer < ApplicationMailer
    default from: 'contact@marine-weishaar.com'
    def new_contact_email
        @email = params[:email]
        @tel = params[:tel]
        @lastname = params[:lastname]
        @firstname = params[:firstname]
        @message = params[:message]
        @type_demande = params[:type_demande]
        @status = params[:status]
        @rgpd = params[:rgpd]
        @status = params[:status]
        mail(to: "mw@marine-weishaar.com",reply_to: @email, subject: "Nouveau message de Marine Weishaar Immobilier")
    end
end
