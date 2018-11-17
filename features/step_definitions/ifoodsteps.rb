###Cenário buscar restaurantes###
Given("Eu acesso o ifood") do
    visit "https://www.ifood.com.br/"
  end
  
  When("Eu busco pelo CEP {string}") do |cep|
    #Preenchendo o campo CEP com a variável cep
    fill_in "cep", with: cep

    #Clicando no botão Buscar para pesquisar
    click_on(class: "buscarCep submitCep")
  end

  When("Eu busco pelo numero {string}") do |numero|
    #Preenchendo o campo número
    find(:css, '.field5.streetNumber').set numero

    #Clicando no botão Buscar para pesquisar
    click_on(class: "submit")
  end

  When("Eu acesso o primeiro restaurante encontrado") do
    #Acessando o primeiro restaurante encontrado
    page.all(:css, ".name")[0].click
  end

  When("Eu busco por {string}") do |comida|
    #Pesquisando por pizza
    fill_in "searchField", with: comida

    #Clicando no botão Buscar para pesquisar
    click_on(class: "btn-search")

    #Clicando na Pizza Catupiríssima!
    click_on(id: "item-42375591")
  end

  When("Eu busco meu {string}") do |refri|
    #Pesquisando por refrigerante
    fill_in "searchField", with: refri

    #Clicando no botão Buscar para pesquisar
    click_on(class: "btn-search")

    #Clicando no Refrigerante Lata 350ml
    click_on(id: "item-42375789")

    #Acrescentando uma unidade de Coca Cola Lata 350ml
    page.all(:css, ".ico-plus.ico-plus-0")[0].click

    #Clicando em continuar
    click_on(id: "btn_0")
  end

  Then("Eu clico no botão Escolher forma de pagamento") do
    #Clicando no botão Escolher forma de pagamento
    page.all(:css, ".btn")[1].click
    sleep 5
  end