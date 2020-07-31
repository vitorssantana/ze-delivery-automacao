# Ze Delivery
O projeto foi feito no MacOs, os comandos para um ou outro S.O pode variar

Para configurar o ambiente, é necessário:

  1 - Ter o homebrew instalado. Para instalá-lo, é só rodar o seguinte comando:
  
     - /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    
  
  2 - Instalar esses pacotes atraves do console::
  
    - brew install ruby
    
    - brew install chromedriver
    
    
  3 - Instalar as seguintes gems atraves do console:  
     
    - gem install cucumber

    - gem install capybara

    - gem install capybara-webkit

    - gem install selenium-webdriver

    - gem install rails

    - gem install rspec

3 - Depois de instalado, para executar os dois testes de uma vez, só rodar o seguinte comando na pasta raíz:

    - cucumber
    
Mas se for necessário, as features podem ser rodadas individualmente; só executar os comandos:

    cucumber features/specifications/criar_tarefa.feature
    cucumber features/specifications/criar_subtarefa.feature
