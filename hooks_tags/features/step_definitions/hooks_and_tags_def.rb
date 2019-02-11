Given("I have a before hook in place with name details") do
  @users
end

Then("I can validate the information in the before hook") do
  expect(@users[0]).to eq 'Dave'
end


Given("I use tags") do
  p 'this is the given tag use'
end

Then("only this test will run") do
  p 'only this two run if I use tag'
end