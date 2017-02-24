class MyData < SitePrism::Page

		######INPUTs######
	element :fullname_field, "input[id = 'life_order_flow_insured_person_data_insured_person_attributes_name']"
	element :cpf, "input[id = 'life_order_flow_insured_person_data_insured_person_attributes_cpf']"
	element :cep, "input[id = 'life_order_flow_insured_person_data_insured_person_attributes_address_attributes_zipcode']"
	element :number, "input[id = 'life_order_flow_insured_person_data_insured_person_attributes_address_attributes_number']"
	element :complement, "input[id = 'life_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement']"
	
	
	
	
		######SELECT######
	element :gender, "select[id='life_order_flow_insured_person_data_insured_person_attributes_gender']"
	

		######BUTTONs######
	element :proximopasso, :css, ".button.button--primary"
									
	
	######VALIDAÇÃO######
	element :mensagemMyData, :xpath, ".//*[@id='container']/section[1]/h2/span", text: "Só queremos saber um pouquinho mais sobre você."
	
end