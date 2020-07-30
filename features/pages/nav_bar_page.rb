# frozen_string_literal: true
class NavBarPage < SitePrism::Page
  element :input_pesquisa_bebida, '#search-product-input'
  element :icon_sacola, :xpath, '//img[@alt="cart"]'
  elements :lista_resultado_bebidas, '#search-product-list'

  def pesquisar_bebida(bebida)
    input_pesquisa_bebida.set(bebida)
  end

  def clicar_resultado_lista(nome_bebida)
    lista_resultado_bebidas.each do |bebida|
      if bebida.find('.css-kzmtws-productCard >  div:nth-child(2) > span').text == nome_bebida
        bebida.find('.css-kzmtws-productCard').click
        break
      end
    end
  end

  def clicar_icone_sacola
    icon_sacola.click
  end
end