class KMS < SitePrism::Page
	set_url 'https://backend.diginn-kds.domain4now.com/admin/login'
	element :login_text, 'body > div > div > div > div.main-data > div > div > h3' #Find "Please Login" text on the page
	element :email, :id => 'admin_email'
	element :password, :id => 'admin_password'
	element :login_button, '#new_admin > div.actions > inputt' #Find "Log in" button on the page
end

class OpenTender < SitePrism::Page
	set_url 'https://sandbox.opentender.io/login'
	element :ot_login_text, '#app > div > div > div.landing__content > div > div > div.landing__form__login > div.landing__header > p'
	element :ot_email, :id => 'email'
	element :ot_password, :id => 'password'
	element :ot_login_button, '#form-login > input[type=submit]'
	element :loggedin_text, '#top > div.content > div > div.content__header > h1' #Find OT login text
	element :orders, '#app > div > div > div > div.sidebar > div > nav > ul > li:nth-child(1) > a > span > span.nav__name'
end
