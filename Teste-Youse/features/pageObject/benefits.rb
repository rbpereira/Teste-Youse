class Benefits < SitePrism::Page

		######INPUTs######
	element :benefitsname_field, "input[id = 'life_order_flow_beneficiaries_beneficiaries_attributes__name']"
	element :compensation, "input[id = 'life_order_flow_beneficiaries_beneficiaries_attributes__compensation']"
	
	
	
	
		######SELECT######
	element :relationship, "select[id='life_order_flow_beneficiaries_beneficiaries_attributes__relationship']"
	

		######BUTTONs######
	element :proximopasso, :css, ".button.button--primary"
	
	
	######VALIDAÇÃO######
	element :mensagembenefits, :xpath, ".//*[@id='container']/section[1]/p[1]", text: "Hora de incluir os beneficiários."
	
end