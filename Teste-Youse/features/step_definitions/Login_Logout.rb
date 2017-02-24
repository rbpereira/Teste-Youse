Given(/^I access the YOUSE site$/) do
	visit "https://www.youse.com.br/"
end

When(/^I enter with a e-mail and password valid$/) do
	@Login = Login.new
	@Login.MinhaConta.click
	@Login.email_field.set('teste123@teste.com')
	@Login.ProximoPasso.click
	@Login.password_field.set('123456789')
end

And(/^Click no button Entrar$/) do
	@Login.Entrar.click
end

Then(/^Login is successfully made$/) do
	@Login.mensagemLogin :text => "Login efetuado com sucesso."
end

When(/^I click in button logout$/) do
	@Login.Logout.click
end

Then(/^Logout is successfully made$/) do
	@Login.mensagemLogout :text => "MINHA CONTA"
end