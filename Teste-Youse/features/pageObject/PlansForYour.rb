class PlansForYour < SitePrism::Page

	######BUTTONs######
	element :queroEsseYousePlus, :xpath, ".//*[@id='container']/section[2]/div[1]/section[3]/div[2]/section[1]/div[2]/form[1]/input[2]"
	
	
	
	######VALIDAÇÃO######
	element :mensagemPlansForYou, :xpath, ".//*[@id='container']/section[1]/div/p", text: "Personalize ou escolha um plano tipo vc"
	
	
end