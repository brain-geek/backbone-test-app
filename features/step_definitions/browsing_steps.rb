When /^I click "(.*?)" and wait untill it is gone$/ do |arg1|
  link = find_link(arg1)
  link.click

  begin
    wait_until(10) do 
      lambda { link.visible? }.should raise_error(Selenium::WebDriver::Error::StaleElementReferenceError)
    end
  rescue Capybara::TimeoutError
    flunk 'Expected link to be gone.'
  end
end

Then /^I call debugger$/ do
  binding.pry
end

Then /^I should not see "(.*?)" in the "(.*?)"$/ do |text, selector|
  within selector do
    has_no_content? text
  end
end

Then /^I should see "(.*?)" in the "(.*?)"$/ do |text, selector|
  within selector do
    has_content? text
  end
end