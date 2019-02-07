Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.select_signin
end

Given("I input incorrect username details") do
  @bbc_site.bbc_signin.fillin_username('apple1231@btinternet.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_signin.fillin_password('hello1221')
end

When("I try to login") do
  @bbc_site.bbc_signin.select_signin
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


# inputing invalid email
Given("I input incorrect email") do
  @bbc_site.bbc_signin.fillin_username('apple1231@btint')
end

Then("I recieve error not beeing valid email") do
  expect(@bbc_site.bbc_signin.get_error_messege).to eq @bbc_site.bbc_signin.error_invalid_email
end


#inputing wrong password
Given("I input correct email") do
  @bbc_site.bbc_signin.fillin_username('paul.ciobanita@gmail.com')
end

Then("I recieve error beeing the wrong password for email") do
  expect(@bbc_site.bbc_signin.get_password_error_messege).to eq(@bbc_site.bbc_signin.error_wrong_password) | eq(@bbc_site.bbc_signin.error_wrong_password_2)
end

# inputng password with only letters
Given("I input letters only password") do
  @bbc_site.bbc_signin.fillin_password('helloqwww')
end

Then("I recieve error beeing asking me to instert something other that letters") do
  expect(@bbc_site.bbc_signin.get_password_error_messege).to eq @bbc_site.bbc_signin.error_password_no_numbers
end


#inputing numbers only passord
Given("I input numbers only password") do
  @bbc_site.bbc_signin.fillin_password('12345225422')
end

Then("I recieve error beeing asking me to instert something other than numbers") do
  expect(@bbc_site.bbc_signin.get_password_error_messege).to eq @bbc_site.bbc_signin.error_password_no_letters
end

# inputing a password that is to long
Given("I input passowrd with to many characters") do
  @bbc_site.bbc_signin.fillin_password('askdhakjshdkjahsdkjahsk21321kjashdkjahskjdh213h21kjhakhdkjasdhkjashd21321')
end

Then("I recieve error beeing telling me password to long") do
  expect(@bbc_site.bbc_signin.get_password_error_messege).to eq @bbc_site.bbc_signin.error_password_to_long
end



# input username that is to short
Given("I input short username") do
  @bbc_site.bbc_signin.fillin_username('q')
end

Then("I recieve error with username beeing to short") do
  expect(@bbc_site.bbc_signin.get_error_messege).to eq @bbc_site.bbc_signin.error_username_to_short
end