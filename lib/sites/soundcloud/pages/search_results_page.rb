require 'rubygems'
require 'taza/page'

module Soundcloud
  class SearchResultsPage < ::Taza::Page

    element(:results_list) { browser.ul(:class => 'tracks-list') }
    element(:results_list_first_result) { browser.ul(:class => 'tracks-list').h3(:index => 0) }
    element(:track_filter_results) {browser.a(:class => 'groups-count')}
    element(:enter_group_page) {browser.a(:title => group_name).when_present.click}
    element(:page_title) { browser.title }

  end
end
