When(/^the client requests GET (.*)$/) do |path|
  get(path)
end

Then(/^the response should be JSON:$/) do |json|
  expect(last_response.body).to eq json
end
