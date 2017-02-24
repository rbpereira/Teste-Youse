class Register < SitePrism::Page

		######INPUTs######
	element :name_field, "input[id = 'user_name']"
	element :email_field, "input[id = 'user_email']"
	element :password_field, "input[id = 'user_password']"
	element :confirm_password_field, "input[id = 'user_password_confirmation']"
	

		######BUTTONs######
	element :EnviarCadastro, :xpath, ".//*[@id='new_user']/div/input"
	
	
	######VALIDAÇÃO######
	element :mensagemnewregister, :xpath, ".//*[@id='container']/div[1]/div/div[2]", text: "Bem vindo! Você realizou seu registro com sucesso."
end