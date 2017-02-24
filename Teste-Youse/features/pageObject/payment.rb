class Payment < SitePrism::Page
	
	######VALIDAÇÃO######
	element :mensagempayment, :xpath, ".//*[@id='summary-top']/h2[2]/span"
	
end