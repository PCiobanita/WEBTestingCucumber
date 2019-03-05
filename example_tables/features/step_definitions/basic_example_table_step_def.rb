Given("I have more than one tata row in my example tale") do

end

Given(/^it includes (.*) as a string and (.*) as an integer$/) do |name, age|
  p 'running test -----------'
  age = age.to_i
  expect(name).to be_kind_of String
  expect(age).to be_kind_of Integer
end

Then(/^I can validate the (.*) & (.*) are correct$/) do |name, age|
  age = age.to_i
  expect(name).to eq("Dave").or eq("Tim")
  expect(age).to eq(23).or eq(24)
end