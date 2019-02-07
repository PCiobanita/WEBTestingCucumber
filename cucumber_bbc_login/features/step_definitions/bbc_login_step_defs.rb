Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.select_signin
  sleep 2
end

Given("I input incorrect username details") do
  @bbc_site.bbc_signin.fillin_username('apple1231@btinternet.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_signin.fillin_password('hello1221')
end

When("I try to login") do
  @bbc_site.bbc_signin.select_signin
  sleep 2
end

Then("I recieve error for not finding the account") do
 expect(@bbc_site.bbc_signin.get_error_messege).to eq @bbc_site.bbc_signin.error
end



# inputing password to short

Given("I input a password that is to short") do
  @bbc_site.bbc_signin.fillin_password('b')
end

Then("I recieve error for password beeing to short") do
  expect(@bbc_site.bbc_signin.get_password_error_messege).to eq @bbc_site.bbc_signin.error_password
end

