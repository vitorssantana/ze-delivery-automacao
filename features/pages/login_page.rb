# frozen_string_literal: true
class LoginPage < SitePrism::Page
  element :button_continuar_com_facebook, '#login-facebook-button-sign-in'
  element :button_entrar_com_email, '#login-home-email-button-sign-in'
  element :link_nao_possui_conta, :xpath, '//a[text()="Criar uma conta"]'

  element :input_email, '#login-mail-input-email'
  element :input_senha, '#login-mail-input-password'
  element :button_entrar, '#login-mail-button-sign-in'
  element :link_esqueci_senha, '#login-email-ling-forgot-password'

  def clicar_botao_continuar_com_facebook
    button_continuar_com_facebook.click
  end

  def clicar_continuar_com_email
    button_entrar_com_email.click
  end

  def clicar_link_criar_uma_conta
    link_nao_possui_conta.click
  end

  def realizar_login(email, senha)
    input_email.set(email)
    input_senha.set(senha)
    button_entrar.click
  end
end