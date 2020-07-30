# Ze Delivery
O projeto foi feito no MacOs, os comandos para um ou outro S.O pode variar

Para configurar o ambiente, é necessário:

  1 - Ter o homebrew instalado;
  
  2 - Instalar esses pacotes:
  
    - brew install ruby
    
    - brew install chromedriver
     
    - gem install cucumber

    - gem install capybara

    - gem install capybara-webkit

    - gem install selenium-webdriver

    - gem install rails

    - gem install rspec

3 - Depois de instalado, para executar os dois testes de uma vez, só rodar o seguinte comando na pasta raíz:

cucumber
Mas se for necessário, as features podem ser rodadas individualmente; só executar os comandos:

cucumber features/specifications/criar_tarefa.feature

cucumber features/specifications/criar_subtarefa.feature
Seguem na raíz também o currículo e a parte 3 da seleção.
