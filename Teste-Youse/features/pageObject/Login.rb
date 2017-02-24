class Login < SitePrism::Page

		######INPUTs######
	element :email_field, "input[id = 'email']"
	element :password_field, "input[id = 'user_password']"
	
	

		######BUTTONs######
	element :ProximoPasso, :xpath, ".//*[@id='container']/div[2]/article/form/div/input"
	element :Entrar, :xpath, ".//*[@id='new_user']/div/input"
	element :Logout, :id, "track_logout"
	element :MinhaConta, :xpath, ".//*[@id='container']/div[1]/header/section/div/div/a[2]"
	element :Cadastre_se, :xpath, ".//*[@id='container']/div[2]/a[1]"
	
	
	
	######VALIDAÇÃO######
	element :mensagemLogin, :xpath, ".//*[@id='container']/div[1]/div/div[2]", text: "Login efetuado com sucesso."
	element :mensagemLogout, :xpath, ".//*[@id='container']/div[1]/header/section/div/div/a[2]", text: "MINHA CONTA"
end