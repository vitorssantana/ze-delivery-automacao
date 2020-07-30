# frozen_string_literal: true
class ProdutoPage < SitePrism::Page
  element :button_reduzir_unidade, '#minus-button'
  element :button_aumentar_unidade, '#plus-button'
  element :button_adicionar, '#add-product'

  def adicionar_unidade_bebida
    button_aumentar_unidade.click
  end

  def diminuir_unidade_bebida
    button_reduzir_unidade.click
  end

  def clicar_adicionar_produto
    button_adicionar.click
    sleep 1
  end
end