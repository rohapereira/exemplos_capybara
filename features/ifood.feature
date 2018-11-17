Feature: Acessar os restaurantes e pratos da minha cidade

    Como um visitante do site do iFood

    Eu posso selecionar a minha cidade sem precisar fazer login

    E eu posso visualizar os restaurantes e pratos disponiveis

Scenario: Buscar restaurantes
    Given Eu acesso o ifood
    When Eu busco pelo CEP "14801320"
    And Eu busco pelo numero "1677"
    And Eu acesso o primeiro restaurante encontrado
    And Eu busco por "pizza"
    And Eu busco meu "refrigerante"
    Then Eu clico no botão Escolher forma de pagamento