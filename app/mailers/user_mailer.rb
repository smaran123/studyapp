class UserMailer < ApplicationMailer

  def send_school_invitation(school_admin)
    @school_admin = school_admin
     mail (to: school_admin.email, :from => "bhagat@dine-media.com", :subject => "School #{@school_admin.school_name}create.")
  end

end

