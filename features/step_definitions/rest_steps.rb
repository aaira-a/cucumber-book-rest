When(/^the client requests GET (.*)$/) do |path|
  get(path)
end

Then(/^the response should be JSON:$/) do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
