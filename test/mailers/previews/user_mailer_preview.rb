# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/send_school_invitation
  def send_school_invitation
    UserMailer.send_school_invitation
  end

end
