require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL
  
  # Page Object
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  SIGNIN_ID = 'idcta-link'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def select_signin
    find(:id, SIGNIN_ID).click  
  end

  
end