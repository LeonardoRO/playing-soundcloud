require 'rubygems'
require 'taza/page'

module Soundcloud
  class LoginModal < ::Taza::Page

    element(:email_textbox) { browser.text_field(:name => 'username')}
    element(:password_textbox) { browser.text_field(:name => 'password')}
    element(:login_button) { browser.button(:value => 'Log in')}

  end
end