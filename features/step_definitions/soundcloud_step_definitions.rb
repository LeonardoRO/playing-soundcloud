Before do
  @site = Soundcloud.new
end

After do
  @site.close
end

Given /^I am on Soundcloud$/ do
  @site.browser.title.should == 'SoundCloud - Share Your Sounds'
end

#TODO: create a random email/pwd generator to create new random accounts
When /^I login to Soundcloud as "([^"]*)" and "([^"]*)"$/ do |username, password|
   @site.login_as(username, password)
end

When /^I login to Soundcloud$/ do
  @site.login_as('microchipatwork@gmail.com', 'churrasco@123!')
end

Then /^the dashboard is displayed$/ do
  @site.browser.title.should == 'Dashboard on SoundCloud - Create, record and share your sounds for free'
  @site.browser.url.should == 'http://soundcloud.com/dashboard'
end

Given /^I am at the dashboard$/ do
  step "I login to Soundcloud"
end

When /^I search for "([^"]*)"$/ do |search_term|
  @site.search_for(search_term)
end

Then /^I should see the search results for "([^"]*)"$/ do |search_term|
  #TODO: handle 'Sorry, search is currently not available. Please try again.'
  @site.search_results_page.results_list_first_result.text.downcase.should include(search_term.downcase)
end

Then /^I filter the results to groups$/ do
  #TODO: add groups/tracks/people
  @site.search_results_page.track_filter_results.click
end

Then /^I enter the group "([^"]*)"$/ do |group_name|
  @site.enter_group(group_name)
end

When /^I join the group$/ do
  @site.join_group()
end

Then /^I can post a message "([^"]*)" to the group$/ do |message|
  @site.post_to_group(message)
end

Then /^I can delete the post$/ do
  pending
end

Then /^I can leave the group$/ do
  pending
end

Then /^I see the incorrect login message$/ do
  pending
end
