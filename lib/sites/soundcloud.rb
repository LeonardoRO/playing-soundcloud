require 'rubygems'
require 'taza'

module Soundcloud
  include ForwardInitialization

  class Soundcloud < ::Taza::Site

    def close
      browser.close
    end

  end
end
