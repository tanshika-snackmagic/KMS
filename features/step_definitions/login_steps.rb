require_relative '../pages/login_page.rb'

Given(/^User navigate to the website$/) do
  @home = KMS.new
  @home.load
  @home.wait_until_login_text_visible
end

When(/^User enters data to login$/) do
  @home.email.set 'diginn.kds@vinsol.com'
  @home.password.set 'qq11WW@@'
  @home.login_button.click
end

Then(/^User should be Successful$/) do
  sleep 5
  @ot = OpenTender.new
  @ot.load
  @ot.wait_until_ot_login_text_visible
  @ot.ot_email.set 'achal@vinsol.com'
  @ot.ot_password.set 'qq11WW@@qq11'
  @ot.ot_login_button.click
  @ot_wait_until_loggedin_text_visible
  sleep 5
  @ot.orders.click
  @home.load
  sleep 5
end