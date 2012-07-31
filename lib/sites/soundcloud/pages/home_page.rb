require 'rubygems'
require 'taza/page'

module Soundcloud
  class HomePage < ::Taza::Page

    element(:page_title) { browser.title }

  end
end