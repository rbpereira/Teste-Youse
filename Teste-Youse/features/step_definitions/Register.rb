Given(/^I access the YOUSE site$/) do
	visit "https://www.youse.com.br/"
end

When(/^I make a new registration$/) do
	@senha = Faker::Base.numerify('inicial####').to_s
	@Login = Login.new
	@Register = Register.new
	
	@Login.MinhaConta.click
	@Login.Cadastre_se.click
	
	@Register.name_field.set(Faker::Name.first_name)
	@Register.email_field.set(Faker::Internet.email)
	@Register.password_field.set(Faker::Base.numerify(@senha).to_s)
	@Register.confirm_password_field.set(Faker::Base.numerify(@senha).to_s)
	
	@Register.EnviarCadastro.click
end

Then(/^My registration will be successfully made$/) do
	@Register.mensagemnewregister :text => "Bem vindo! Você realizou seu registro com sucesso."
end