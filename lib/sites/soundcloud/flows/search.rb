require 'rubygems'

module Soundcloud
  class Soundcloud < ::Taza::Site

    def search_for(search_term)
      header.search_textbox.when_present.set search_term
      header.search_form.submit
    end

  end
end
