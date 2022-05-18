require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#require_relative 'helper'
#require_relative 'utils'
require 'pry'
require 'rspec'
require 'allure-cucumber'
require 'fileutils'
require 'httparty'
require 'json'
require 'json/pure'
#require 'faker'
#require 'cpf_faker'
#require 'graphql'
# require "graphql/client"
# require "graphql/client/http"

# AJUSTAR ---------------------
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE'] unless defined?(ENVIRONMENT_TYPE)
# AJUSTAR ---------------------

Dir[File.join(File.dirname(__FILE__), '../../fixtures/factories/*.rb')].sort.each { |file| require_relative file }
Dir[File.join(File.dirname(__FILE__), '../../fixtures/factories/**/*.rb')].sort.each { |file| require_relative file }


HTTP_LOG = ENV['HTTP_LOG']
MASSA_APIREST = YAML.load_file(File.dirname(__FILE__) + "/massa/dev.yml")
CONFIG_APIREST = YAML.load_file(File.dirname(__FILE__) + "/config/dev.yml")

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'

    "#{source.last.keyword}#{Resultado}"
  end
end

FileUtils.rm_rf('reports')
FileUtils.rm_rf('reports_allure')
FileUtils.mkdir_p('reports')
FileUtils.mkdir_p('reports_allure')
