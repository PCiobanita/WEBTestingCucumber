require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_signin'


class BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_signin
    BbcSignin.new
  end

end