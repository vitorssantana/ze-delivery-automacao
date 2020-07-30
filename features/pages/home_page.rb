# frozen_string_literal: true
class HomePage < SitePrism::Page
  set_url 'https://www.ze.delivery/'
  element :button_entrar, '#welcome-button-sign-in'

  def clicar_botao_entrar
    button_entrar.click
  end
end