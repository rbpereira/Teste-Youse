class TypeInsurance < SitePrism::Page

		######INPUTs######
	element :name_field, "input[id = 'life_order_flow_lead_person_data_lead_person_attributes_name']"
	element :Phone_field, "input[id = 'life_order_flow_lead_person_data_lead_person_attributes_phone']"
	element :password_field, "input[id = 'user_password']"
	element :confirm_password_field, "input[id = 'user_password_confirmation']"
	
	element :birthDate_field, "input[id = 'life_order_flow_pricing_requirements_insured_person_attributes_date_of_birth']"
	element :confirm_password_field, "input[id = 'user_password_confirmation']"
	element :confirm_password_field, "input[id = 'user_password_confirmation']"
	element :work, :css, (".select2-search__field")[0]
	element :birthDatePersonMate_field, "input[id = 'life_order_flow_pricing_requirements_insured_person_mate_attributes_date_of_birth']"
	
	
	
	
	
		######SELECT######
	element :finance, "select[id='life_order_flow_pricing_requirements_insured_person_attributes_salary_range']"
	element :status, "select[id='life_order_flow_pricing_requirements_insured_person_attributes_has_mate']"
	
	
	

		######BUTTONs######
	element :SeguroLife, :xpath, ".//*[@id='container']/div[3]/div/div/article[3]/a"
	element :FazerSimulacao, :xpath, ".//*[@id='life_order_next_button']/input"
	element :verpreco, :css, ".button.button--primary"
	element :spanwork, :xpath, ".//*[@id='select2-life_order_flow_pricing_requirements_insured_person_attributes_occupation-container']/span"
	element :spanwork2, :xpath, ".//*[@id='select2-life_order_flow_pricing_requirements_insured_person_mate_attributes_occupation-container']"
								
	
	
	
	
	######VALIDAÇÃO######
	element :mensagemPageQuotation, :xpath, ".//*[@id='container']/section/h2/span", text: "Então vamos lá! A gente quer te conhecer melhor, é rapidinho."
	element :mensagemMyData, :xpath, ".//*[@id='container']/section[1]/h2/span", text: "Só queremos saber um pouquinho mais sobre você."
	
end