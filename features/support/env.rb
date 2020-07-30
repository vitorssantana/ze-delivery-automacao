# frozen_string_literal: true

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'date'

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 5
Capybara.javascript_driver = :webkit
Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.ze.delivery/'
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
