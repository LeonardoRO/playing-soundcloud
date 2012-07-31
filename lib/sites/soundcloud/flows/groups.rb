require 'rubygems'

module Soundcloud
  class Soundcloud < ::Taza::Site

    def enter_group(group_name)
      group_page.enter_group_link(group_name).when_present.click
    end

    def join_group
      group_page.join_group_button.when_present.click
    end

    def post_to_group(message)
      group_page.discussion_link.when_present.click
      group_page.post_textarea.when_present.set message
      group_page.post_comment_button.when_present.click
      group_page.leave_group_button.when_present.click
    end

  end
end
