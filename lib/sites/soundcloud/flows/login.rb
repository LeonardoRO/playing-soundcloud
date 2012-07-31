require 'rubygems'

module Soundcloud
  class Soundcloud < ::Taza::Site

    def login_as(user, pwd)
      header.login_link.when_present.click
      login_modal.email_textbox.when_present.set user
      login_modal.password_textbox.set pwd
      login_modal.login_button.click
      dashboard_page.dashboard_link.wait_until_present
    end

  end
end
