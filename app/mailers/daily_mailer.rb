class DailyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.daily_mailer.notify_user.subject
  #
  def notify_user
    default to: -> { User.pluck(:email) }
        mail(subject: "Bookersの定期メールです")
  end
end
