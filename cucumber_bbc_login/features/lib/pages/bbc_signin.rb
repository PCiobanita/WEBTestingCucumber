require 'capybara/dsl'

class BbcSignin
  attr_accessor :error, :error_password
  include Capybara::DSL
  # Page Object
  USERNAME_FIELD = 'user-identifier-input'.freeze
  PASSWORD_FIELD = 'password-input'.freeze
  SIGN_IN_BUTTON = 'submit-button'.freeze
  ERROR_MESSEGE = 'form-message-username'.freeze
  PASSWORD_MESSEGE = 'form-message-password'.freeze

  def initialize
      @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
      @error_password = 'Sorry, that password is too short. It needs to be eight characters or more.'
  end
  

  def fillin_username(email)
    fill_in(USERNAME_FIELD, with: email)
  end

  def fillin_password(password)
    fill_in(PASSWORD_FIELD, with: password)
  end

  def select_signin
    find(:id, SIGN_IN_BUTTON).click
  end

  def get_error_messege
    find(:id, ERROR_MESSEGE).text
  end

  def get_password_error_messege
    find(:id, PASSWORD_MESSEGE).text
  end

end
