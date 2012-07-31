require 'rubygems'
require 'taza/page'

module Soundcloud
  class DashboardPage < ::Taza::Page

    element(:dashboard_page_title) { browser.title }
    element(:dashboard_link) {browser.a(:id => 'dashboard-return-link')}

  end
end
