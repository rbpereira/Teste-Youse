Feature: Login and Logout

Scenario: Login and logout on YOUSE

  Given I access the YOUSE site
  When I enter with a e-mail and password valid
  And Click no button Entrar
  Then Login is successfully made
  When I click in button logout
  Then Logout is successfully made
  
  