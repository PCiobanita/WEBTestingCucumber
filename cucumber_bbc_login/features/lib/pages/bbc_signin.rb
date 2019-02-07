require 'capybara/dsl'

class BbcSignin
  attr_accessor :error, :error_password, :error_invalid_email, :error_wrong_password, :error_wrong_password_2, :error_password_no_numbers, :error_password_no_letters, :error_password_to_long, :error_username_to_short
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
      @error_invalid_email = "Sorry, that email doesn’t look right. Please check it's a proper email."
      @error_wrong_password = "That's not the right password for that account. Reset your password here."
      @error_wrong_password_2 = "Uh oh, that password doesn’t match that account. Please try again."
      @error_password_no_numbers = "Sorry, that password isn't valid. Please include something that isn't a letter."
      @error_password_no_letters = "Sorry, that password isn't valid. Please include a letter."
      @error_password_to_long = "Sorry, that password is too long. It can't be more than 50 characters."
      @error_username_to_short = "Sorry, that password is too long. It can't be more than 50 characters."
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
