Given(/^I'm logged in on Youse website$/) do
	visit "https://www.youse.com.br/"
	@Login = Login.new
	@Login.MinhaConta.click
	@Login.email_field.set('teste123@teste.com')
	@Login.ProximoPasso.click
	@Login.password_field.set('123456789')
	@Login.Entrar.click
end

When(/^I choose the type of insurance$/) do
	@TypeInsurance = TypeInsurance.new
	@TypeInsurance.SeguroLife.click
end

And(/^Fill in the information for plan for you$/) do
	@TypeInsurance.mensagemPageQuotation :text => "Então vamos lá! A gente quer te conhecer melhor, é rapidinho."
	@TypeInsurance.name_field.set('Robert Bruno Pereira')
	@TypeInsurance.Phone_field.set('11 99999-9999')
	@TypeInsurance.FazerSimulacao.click
	
	@TypeInsurance.birthDate_field.set('21/02/1982')
	@TypeInsurance.spanwork.click
	all(:css, '.select2-search__field')[0].set("Advogado\n")
	#@TypeInsurance.work.set("Advogado\n")
	@TypeInsurance.finance.select("Até R$ 800,00")
	@TypeInsurance.status.select("Sou casado(a)")
	@TypeInsurance.birthDatePersonMate_field.set("10/10/1985")
	@TypeInsurance.spanwork2.click
	all(:css, '.select2-search__field')[0].set("Advogado\n")
	#@TypeInsurance.work.set("Advogado\n")
	@TypeInsurance.verpreco.click
end

And(/^Fill in the information for coverages$/) do
	@PlansForYour = PlansForYour.new
	@PlansForYour.mensagemPlansForYou :text => "Personalize ou escolha um plano tipo vc"
	@PlansForYour.queroEsseYousePlus.click
end

And(/^Fill in the information for my data$/) do
	@MyData = MyData.new
	@MyData.mensagemMyData :text => "Só queremos saber um pouquinho mais sobre você."
	@MyData.fullname_field.set('Robert Bruno Pereira')
	@MyData.cpf.set('22530512841')
	@MyData.gender.select("Masculino")
	@MyData.cep.set('04748-000')
	@MyData.number.set('55')
	@MyData.complement.set('apt 100, torre 1')
	@MyData.proximopasso.click
end

And(/^Fill in the information for benefits$/) do
	@Benefits = Benefits.new
	@Benefits.mensagembenefits :text => "Hora de incluir os beneficiários."
	@Benefits.benefitsname_field.set('Raquel Barbosa')
	@Benefits.relationship.select('Cônjuge')
	@Benefits.compensation.click
	@Benefits.compensation.click
	@Benefits.compensation.click
	@Benefits.compensation.set('100,00')
	@Benefits.proximopasso.click	
end

And(/^Fill in the information for payments$/) do
	@Payment = Payment.new
	@Payment.mensagempayment :text => "Insira os dados de pagamento e concorra!"
end

