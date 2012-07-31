require 'rubygems'
require 'taza/page'

module Soundcloud
  class GroupPage < ::Taza::Page

    element(:discussion_link) {browser.a(:class => 'discussion-count')}
    element(:post_textarea) { browser.text_field(:id => 'group_post_body')}
    element(:post_comment_button) {browser.button(:id => 'group_post_submit')}
    element(:join_group_button) {browser.a(:class => 'membership button create')}
    element(:leave_group_button) {browser.a(:class => 'membership button destroy')}
    element(:enter_group_link) { |group_name| browser.a(:title => "#{group_name}") }

  end
end
