class UserMailer < ActionMailer::Base
  default from: "MOD Mail <donotreply@mod.com>"

  def welcome(user)
    @user = user
    mail to: user.email, subject: "Welcome to Hyve, #{user.first_name}!", from: "hello@mod.com"
  end 

  def reset_password_email(user)
    @user = user
    @url = edit_password_reset_url(user.reset_password_token)
    mail to: user.email, subject: "Your password has been reset"
  end

  def send_contact_form(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail to: "hello@mod.com", subject: "#{subject}", from: "mod_contact_form@mod.com"
  end 

  def email_password(user, password)
    @user = user
    @password = password
    mail to: user.email, subject: "[Important] Your Facebook account default password"
  end

  def activation_needed_email(user)
    @user = user
    @url  = activate_user_url(user.activation_token)
    mail(to: user.email, subject: "Welcome to Worthy App!")
  end

  def activation_success_email(user)
    @user = user
    @url  = login_url
    mail(to: user.email, subject: "Your account is now activated")
  end
end
