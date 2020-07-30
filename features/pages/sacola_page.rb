# frozen_string_literal: true
class SacolaPage < SitePrism::Page
  elements :lista_bebidas, '.css-1p8r4y7'
  element :button_confirmar_remocao, '#primary-modal-button'
  element :button_reduzir_unidade, '#product-minus-button'
  element :button_aumentar_unidade, '#product-plus-button'
  element :link_adicionar_mais_produtos, '#add-more-products'
  element :button_continuar_compra, '#finish-order'

  def adicionar_unidade_bebida
    button_aumentar_unidade.click
  end

  def diminuir_unidade_bebida
    button_reduzir_unidade.click
  end

  def remover_bebida(nome_bebida)
    lista_bebidas.each do |bebida|
      if bebida.find('.css-xsvw85-productTitle').text == nome_bebida
        bebida.find('#product-delete-button').click
        break
      end
    end
    sleep 1
  end

  def remover_todas_bebidas
    lista_bebidas.each do |bebida|
      bebida.find('#product-delete-button').click
      confirmar_remocao_bebida
      break
    end
    sleep 1
  end

  def confirmar_remocao_bebida
    button_confirmar_remocao.click
    sleep 1
  end

  def clicar_link_adicionar_mais_produtos
    link_adicionar_mais_produtos.click
  end

  def clicar_continuar_compra
    button_continuar_compra.click
  end
end