class CustomDeviseMailer < ApplicationMailer
  def custom_confirmation_instructions(record, token, opts={})
    @token = token
    devise_mail(record, :custom_confirmation_instructions, opts)
  end
end
