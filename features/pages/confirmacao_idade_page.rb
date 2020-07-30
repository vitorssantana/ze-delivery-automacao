# frozen_string_literal: true
class ConfirmacaoIdadePage < SitePrism::Page
  element :botao_nao, '#age-gate-button-no'
  element :botao_sim, '#age-gate-button-yes'

  def clicar_botao_nao
    botao_nao.click
  end

  def clicar_botao_sim
    botao_sim.click
  end
end