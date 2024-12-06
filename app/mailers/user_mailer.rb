class UserMailer < ApplicationMailer
    def inquiry_email
        @inquiry = params[:inquiry]
        mail(to: @inquiry.host_email, subject: "Welcome to My Awesome Site")
    end
end
