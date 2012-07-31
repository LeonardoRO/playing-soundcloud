require 'rubygems'
require 'taza/page'

module Soundcloud
  class Header < ::Taza::Page

    element(:login_link) { browser.link(:text => 'Log In')}
    element(:search_textbox) { browser.text_field(:name => 'q[fulltext]')}
    element(:search_form) { browser.form(:class => 'throbberform')}
    element(:search_button) { browser.button(:value => 'Search')}

  end
end