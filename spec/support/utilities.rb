include ApplicationHelper

def sign_in(user, options={})
	if options[:no_capybara]

  	else
	    visit new_user_session_path
	    fill_in "Email",    with: user.email
	    fill_in "Password", with: user.password
	    click_button "Log in"
	end
end