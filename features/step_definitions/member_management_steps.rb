Given /^I am a client$/ do
  @client = Client.create!
end

Given /^I am a user$/ do
  @username = Faker::Internet.user_name
  @password = Faker::Lorem.word
  @user = User.create! first_name: Faker::Name.first_name,
  	last_name: Faker::Name.last_name, 
  	email_address: Faker::Internet.email, 
  	phone_number: ((0..9).map { rand(9) }.join),
  	username: @username,
  	password: @password,
  	client: @client
end

Given /^I am a logged in user$/ do
	step "I am a user"
	visit "/logins/new"
	fill_in :login_username, with: @username
	fill_in :login_password, with: @password
	click_button 'Sign in'
	page.should have_content "Welcome to PlayerBase"
end

Given /^I am on the homepage$/ do
  step "I am a logged in user"
  visit "/"
end

When /^I click on the Members item in the navigation pane$/ do
  within ".navbar" do
    click_link "Members"
  end
end

Then /^I should see the Member Mangement view$/ do
  page.should have_content("Member management")
end

Given /^there is a member$/ do
	@member = Member.create! first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name, 
  		email_address: Faker::Internet.email, 
  		phone_number: ((0..9).map { rand(9) }.join)
end

Given /^I select the member$/ do
	step "I should see the Member Mangement view"
	within "#member-select" do
		#select @member.full_name, from: 'member_id'
		find('.chzn-single').click
		find('.active-result', text: @member.full_name).click
	end
end

Then /^I should see the information for the member$/ do
	page.should have_field(:member_first_name)
	page.should have_field(:member_last_name)
	page.should have_field(:member_email_address)
	page.should have_field(:member_phone_number)
end

Given /^I have selected a member to modify$/ do
	step "I am a logged in user"
	step "there is a member"
	step "I click on the Members item in the navigation pane"
  	step "I select the member"
  	step "I should see the information for the member"
end

When /^I modify the details of the member$/ do
	


end




