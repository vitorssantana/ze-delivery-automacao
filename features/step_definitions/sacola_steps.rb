Dado("que estou logado no ze com o login {string}, {string}") do |string, string2|
  @home = HomePage.new
  @home.load
  @confirmacao_idade = ConfirmacaoIdadePage.new
  @confirmacao_idade.clicar_botao_sim
  @home.clicar_botao_entrar

  @login = LoginPage.new
  @login.clicar_continuar_com_email
  @login.realizar_login(string, string2)
end

Dado("eu adiciono {int} unidades da bebida {string}") do |int, string|
  @nav_bar = NavBarPage.new
  @nav_bar.pesquisar_bebida(string)
  @nav_bar.clicar_resultado_lista(string)
  @produto = ProdutoPage.new
  (2..int).each do
    @produto.adicionar_unidade_bebida
  end
  @produto.clicar_adicionar_produto
  @home.load
end

Quando("eu abro minha sacola") do
  @nav_bar.clicar_icone_sacola
  @sacola = SacolaPage.new
end

Entao("devo ver a bebida {string} com {int} quantidades selecionadas") do |string, int|
  expect(page).to have_css('.css-xsvw85-productTitle', text: string, exact_text: true)
  expect(page).to have_css('#product-amount', text: int)
end

Entao("devo ver o valor do frete {string} com o valor total {string} a pagar") do |string, string2|
  expect(page).to have_css('#shipping-price', text: string)
  expect(page).to have_css('#total-price', text: string2)
end

Quando("acresentar mais {int} unidades") do |int|
  (1..int).each do
    @sacola.adicionar_unidade_bebida
  end
end

Quando("decresento {int} unidades do total") do |int|
  (1..int).each do
    @sacola.diminuir_unidade_bebida
  end
end

Quando("removo a bebida {string}") do |string|
  @sacola.remover_bebida(string)
  @sacola.confirmar_remocao_bebida
end

Entao("eu devo ver a sacola vazia") do
  expect(page).to have_text('Putz, está vazia!')
  expect(page).to have_text('Você não possui nenhum produto na sua sacola')
end

Entao("devo ver a mensagem: {string}") do |string|
  expect(page).to have_text(string)
end

Entao("fico impedido de continuar a compra") do
  expect(page).to have_button('finish-order', disabled: true)
end

Entao("se eu adicionar mais {int} unidades") do |int|
  (1..int).each do
    @sacola.adicionar_unidade_bebida
  end
end

Entao("eu devo passar o valor minimo do pedido") do
  expect(page).not_to have_text('Você não possui nenhum produto na sua sacola')
end

Entao("consigo continuar a compra") do
  expect(page).to have_button('finish-order', disabled: false)
end

Quando("continuo a compra para finalizar o pedido") do
  @sacola.clicar_continuar_compra
end

Entao("eu devo ver a tela de checkout") do
  expect(page).to have_current_path('https://www.ze.delivery/checkout')
end

After do
  @home.load
  @nav_bar.clicar_icone_sacola
  @sacola.remover_todas_bebidas
end