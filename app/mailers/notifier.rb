class Notifier < ApplicationMailer
  def send_admin_email user
    @admin = User.find_by is_admin: true
    @user = user
    mail to: @admin.email, subject: "New Order"
  end
end
