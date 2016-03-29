class Admin::SchoolsController < ApplicationController
 layout :layout?
  def new
    @school_admin = SchoolAdmin.new
  end

  def create
    @school_admin = SchoolAdmin.new(school_admin_params)
    @school_admin.admin_id = current_admin.id

    if @school_admin.save
    # @school_admin.generate_password_reset_code
    # UserMailer.send_school_invitation(@school_admin).deliver
      redirect_to admin_dashboards_path
    else
      flash[:error] = "Failed to create school admin"
      render :action => 'new'
    end
  end

private 

def school_admin_params
  params.require(:school_admin).permit!
end

end



